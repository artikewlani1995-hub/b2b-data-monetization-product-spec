# 05: Pilots, Experiments and Metrics

## Pilot designs
| # | Pilot | Hypothesis | Design | Duration | Success criterion | Kill criterion |
|---|---|---|---|---|---|---|
| 1 | Concierge demand report | H1 | Manual monthly report to 5 design partners | 8 weeks | 3 convert to paid | Fewer than 1 pays |
| 2 | Pricing test | Price fits value | 3 price points across 3 cohorts (Basic at $2k / $3k / $4.5k) | 8 weeks | Highest revenue per qualified lead without conversion collapse | Conversion falls by more than 40% at the top price |
| 3 | API fake-door | H2 | Pricing page with "Request API access" button | 4 weeks | 30% of report trialists click | Under 10% |
| 4 | Audience pilot | H3 | One segment, one activation partner, partner's baseline as control | 90 days | Lift over baseline and signed renewal intent | No measurable lift |
| 5 | Governance dry run | H4 | Run one release through the review process end-to-end | 3 weeks | Approved in under 3 weeks | More than 6 weeks |

## Metrics tree
- **Revenue:** pilots to paid conversion, ARPA, net revenue retention, revenue by stream
- **Adoption:** dashboard weekly active accounts, exports, API activation rate, quota utilisation
- **Quality:** data freshness (refresh by day 5), anomaly alerts per month, suppression rate
- **Trust:** review cycle time, incidents, denied releases
- **Marketplace health (guardrail):** no negative change in core buyer/supplier engagement or response rates

## Opportunity sizing queries
`../sql/` contains runnable queries on synthetic data: demand index (YoY and index), consented segment sizing, and the k-anonymity check.
