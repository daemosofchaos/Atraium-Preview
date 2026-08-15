[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Container })]
    [string]$InputDirectory,

    [string]$OutputFile = "SHA256SUMS.txt"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$resolvedInput = (Resolve-Path -LiteralPath $InputDirectory).Path
$resolvedOutput = if ([IO.Path]::IsPathRooted($OutputFile)) {
    $OutputFile
}
else {
    Join-Path $resolvedInput $OutputFile
}

$artifacts = Get-ChildItem -LiteralPath $resolvedInput -File |
    Where-Object {
        $_.FullName -ne $resolvedOutput -and
        $_.Extension -in '.exe', '.msi', '.msix', '.appx', '.zip', '.apk'
    } |
    Sort-Object Name

if ($artifacts.Count -eq 0) {
    throw "No release artifacts were found in: $resolvedInput"
}

$lines = foreach ($artifact in $artifacts) {
    $hash = (Get-FileHash -LiteralPath $artifact.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
    "$hash  $($artifact.Name)"
}

[IO.File]::WriteAllLines($resolvedOutput, $lines, [Text.UTF8Encoding]::new($false))

Write-Host "Created SHA-256 checksum file: $resolvedOutput" -ForegroundColor Green
$lines | ForEach-Object { Write-Host $_ }
