# Sample project: twelve-desk office network refresh

This is a **synthetic costing exercise**, not a supplier quotation. All quantities, hours, rates, prices, taxes and budget figures are illustrative. Use ZAR throughout and show currency totals to two decimal places.

## Scope

Refresh wired networking for twelve office desks. Include a survey, Cat6 cable and outlets, patch leads, one managed switch, one UPS, network configuration, acceptance testing and project coordination. The supplied labour and materials files contain the quantities and rates to use.

- [Labour activities and rates](labour.csv)
- [Materials quantities and prices](materials.csv)

All CSV rates and unit prices **exclude tax**. Each line's source is this sample input pack; none represents a verified market price or current supplier offer.

## Costing rules

1. Calculate each labour line as hours × hourly rate and each material line as quantity × unit price.
2. Add **R1,800 excluding tax** as one fixed travel/delivery charge. Do not add it per activity or scenario line.
3. Base cost = labour + materials + fixed charge.
4. Contingency = **10% of the entire base cost**, including the fixed charge.
5. Subtotal before tax = base cost + contingency.
6. Apply an **illustrative 15% tax to that subtotal**, including contingency. Do not add tax to the CSV prices first or apply it twice. This is an exercise rule, not tax advice.
7. Compare the total including contingency and tax with a **R60,000 budget on the same basis**. Show remaining budget or the amount exceeded.

## Scenarios

- **Low:** reduce every labour activity's hours by 15%.
- **Base:** use the supplied hours unchanged.
- **High:** increase every labour activity's hours by 15%.

Do not round scenario hours to whole hours. Keep hourly rates, material quantities/prices and the fixed charge unchanged. Recalculate contingency and tax from each scenario's cost. Use full precision in formulas and round final displayed currency totals to two decimal places.

## Assumptions and exclusions

- A single site is ready for access, with suitable existing equipment locations and electrical supply.
- No allowance is included for building alterations, electrical installation, internet subscriptions, ongoing support, new computers or additional hardware.
- Materials availability, lead times and labour scheduling have not been checked.
- Work duration cannot be inferred by adding hours without considering staffing and dependencies.
- For a real estimate, confirm site conditions, actual quantities, current quotes, applicable tax treatment and approval of contingency.

## Deliverables

An editable Excel workbook with traceable inputs and formulas; a client-facing PDF with the breakdown, scenario chart, assumptions and exclusions; retained HTML source; and a summary CSV. Reconcile the totals across all files and label the entire package as illustrative.