# 03: Opportunity Sizing, Pricing, Packaging and Go-to-Market

> Illustrative. Every input is an assumption flagged for validation in discovery. See `../model/revenue_model.xlsx` (blue cells are editable; scenario switch on the *Assumptions* sheet).

## 1. Bottom-up sizing
`../data/opportunity_sizing.csv`. Method: count of plausible buyers x indicative annual price, then an achievable share by year 3.

| Stream | Potential buyers (assumed) | ARPA (USD/yr) | Theoretical market | Y3 achievable share | Y3 obtainable |
|---|---|---|---|---|---|
| Insights reports | 3,000 | 6,000 | $18.0M | 10% | $1.8M |
| Data API | 1,500 | 12,000 | $18.0M | 15% | $2.7M |
| Audience segments | 800 | 30,000 | $24.0M | 12% | $2.9M |
| Data licensing | 150 | 80,000 | $12.0M | 20% | $2.4M |

The obtainable column is an upper-bound ceiling from share assumptions. The *revenue model* is deliberately more conservative because it is driven by named customer counts, not market share.

## 2. Three-year model (base case)
| | Y1 | Y2 | Y3 |
|---|---|---|---|
| Revenue | $308k | $882k | $1.76M |
| Gross profit | $229k | $662k | $1.33M |
| Team and run cost | $560k | $710k | $840k |
| Operating contribution | -$331k | -$49k | +$487k |
| Cumulative | -$331k | -$380k | +$108k |

Scenario view: **Low** case (0.6x customers) does not break even by Y3 (about -$44k contribution in Y3); **High** (1.4x) reaches about +$1.0M in Y3.
The point: a fixed cost base with lumpy, concentrated revenue means *pilot conversion* is the number to watch, not top-of-funnel interest.

## 3. Pricing and packaging
`../data/pricing_packaging.csv`

| Package | Stream | Price (indicative) | Motion |
|---|---|---|---|
| Insights Basic | Reports | $3,000 / yr | Self-serve |
| Insights Pro | Reports | $9,000 / yr | Sales-assisted |
| API Starter | API | $500 / month | Self-serve |
| API Growth | API | $1,500 / month | Sales-assisted |
| Audience Pilot | Audience | $15,000 fixed, 90 days | Direct |
| Audience Scale | Audience | CPM / revenue share, about $30k / yr | Partner-led |
| Data License | Licensing | $80,000 / yr | Enterprise |

**Principles:** price on *value metric* (categories, history depth, calls), not on seats; a good-better-best ladder; paid pilots, never free ones; keep a low entry price so analysts can expense it without procurement.
**Price discovery:** three price points tested across pilot cohorts, plus a van Westendorp survey with design partners.

## 4. Go-to-market
| Phase | Motion |
|---|---|
| Weeks 1 to 8 | Concierge reports to 5 design partners; convert 3 to paid pilots |
| Months 3 to 6 | Public launch of reports; content marketing (monthly "top movers" note); webinars with 2 partners |
| Months 6 to 12 | API beta then GA; developer docs, sandbox; first enterprise licence; partner ecosystem (adtech, martech, analytics) |

**Partner pipeline** (fictional labels): `../data/partner_pipeline.csv`. Weighted by win probability.
