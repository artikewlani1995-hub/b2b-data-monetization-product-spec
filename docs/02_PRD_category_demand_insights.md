# 02: PRD: Category Demand Insights (Reports + Data API)

> Self-initiated portfolio spec. Synthetic data only. Author: Arti Kewlani | v1.0
> Tools: Claude, Perplexity (desk research), Notion (drafting), Cursor (SQL + scripts), Figma (wireframes import)

## 1. Summary
Turn aggregated marketplace demand signals into a subscription data product: a monthly **Category Demand Index** delivered as
a report and, in V1.5, a **REST API**. Outputs are aggregates only, with small cells suppressed, so no buyer or supplier can be identified.

## 2. Problem
Analysts, investors, suppliers' strategy teams, and finance players want early, ground-level signals on what businesses are
trying to buy, by category and region. Today they rely on lagging surveys and government statistics. The marketplace sees demand as it forms.

## 3. Goals and non-goals
**Goals:** 3 paid pilots in 8 weeks; 13 paying accounts (reports + API) by month 12, matching the base case in the revenue model; a repeatable aggregation and governance pipeline reused by later products.
**Non-goals (V1):** buyer-level data, contact details, real-time streaming, custom analysis (services), AI training datasets.

## 4. Users and jobs to be done
| User | Job to be done |
|---|---|
| Market analyst / consultant | "Tell me which categories are heating up before the official data does" |
| Supplier strategy lead | "Where should we expand capacity or marketing next quarter?" |
| Fintech / lender analyst | "Add a demand signal to our sector risk view" (API) |
| Internal sales/BD | "Give me a credible, self-explanatory sample to open conversations" |

## 5. Product definition
**The index:** monthly enquiry volume by category and region, 3-month rolling, expressed as (a) an index (100 = 24-month average),
(b) YoY %, (c) supplier-response ratio, (d) average enquiry value band. Reference SQL: [`../sql/demand_index.sql`](../sql/demand_index.sql).

**V1 (reports, 8 weeks):** monthly PDF + CSV for 10 categories and 5 regions, web dashboard (view, filter, export), 12-month history, methodology note.
**V1.5 (API, +6 weeks):** endpoints `/categories`, `/demand-index`, `/trends/top-movers`, `/usage`; API keys, quotas, sandbox. Contract: [`../api/openapi_data_api.json`](../api/openapi_data_api.json).
**V2:** alerts, custom category bundles, forecast layer, clean-room delivery for audience products.

## 6. Requirements
| ID | Requirement | Priority |
|---|---|---|
| F1 | Monthly refresh by day 5 with automated quality checks (volume anomalies, missing regions) | Must |
| F2 | Suppress any cell with fewer than K=50 distinct buyers (see governance doc) | Must |
| F3 | Dashboard: category and region filters, trend chart, top movers, export CSV/PDF | Must |
| F4 | Methodology page with definitions, limitations and refresh schedule | Must |
| F5 | Account, plan and usage management; invoices via billing system | Must |
| F6 | API with key auth, quotas, rate limits, versioning | Should (V1.5) |
| F7 | Audit log for every external data release | Must |
| F8 | Alerts on category movement | Could (V2) |

## 7. Non-functional
Privacy-first by design (no record-level data leaves the platform); 99.5% API availability target; data freshness SLA; backward-compatible API versioning; observability on pipeline and API.

## 8. Success metrics
| Metric | Target |
|---|---|
| Paid pilots converted | 3 of 5 in 8 weeks |
| Paying accounts at month 12 (reports + API) | 13 |
| Net revenue retention | 100%+ |
| Report open rate / dashboard weekly active accounts | 70% / 50% |
| API activation (key created, 100+ calls in 14 days) | 40% of API trialists |
| Security/privacy review cycle time | Under 3 weeks |
| Suppression rate (cells blocked) | Tracked; below 5% of cells for main plans |

Event taxonomy: [`../events/event_taxonomy.json`](../events/event_taxonomy.json).

## 9. Dependencies and risks
| Risk | Mitigation |
|---|---|
| Re-identification of small segments | K-anonymity threshold, no cross-cut combinations that fall below K, release review |
| Index not predictive, so weak value | Validate against external benchmarks with design partners; publish methodology |
| Core marketplace team sees monetization as a distraction | Shared KPI: no degradation to marketplace metrics; governance council |
| Price discovery wrong | Pilots at 3 price points; van Westendorp survey with design partners |
| Data quality drift (bots, duplicates) | Quality checks in pipeline; anomaly alerts |

## 10. Rollout
Weeks 1 to 4 discovery and concierge reports; weeks 5 to 12 build V1 and run pilots; weeks 13 to 18 API beta; month 6 public launch. Roadmap: [`../roadmap/roadmap.jpg`](../roadmap/roadmap.jpg).
