# B2B Marketplace Data Monetization: 0 to 1 Product Spec

> **Nature of this work:** a self-initiated portfolio project. I wrote it in response to a data-monetization product-manager
> role description, applied to a **generic** B2B marketplace. No company data, no real customers, no client work.
> All figures are illustrative; all datasets are synthetic.

**The question:** how would you build new revenue streams from a marketplace's buyer-intent and demand data, without breaking privacy or trust?

**My answer in brief:** start with the lowest-risk, fastest-to-validate product, a **Category Demand Index** (reports, then API),
and pilot **consented audience segments** in parallel. Put governance (K-anonymity, consent filter, release review) in the
product from day one, because it is what makes the later, higher-value products (licensing, AI data) possible.

## Start here
| Open | To see |
|---|---|
| [`docs/01_discovery_brief.md`](docs/01_discovery_brief.md) | Opportunity long-list, RICE prioritisation, hypotheses |
| [`docs/02_PRD_category_demand_insights.md`](docs/02_PRD_category_demand_insights.md) | PRD for V1 / V1.5 |
| [`wireframes/00_overview.png`](wireframes/00_overview.png) | 4 low-fi screens |
| [`roadmap/roadmap.jpg`](roadmap/roadmap.jpg) | 12-month roadmap |
| [`model/revenue_model.xlsx`](model/revenue_model.xlsx) | 3-year revenue model with scenario switch |

## All files
| Folder | Contents |
|---|---|
| `docs/` | Discovery brief, PRD, sizing/pricing/GTM, privacy and governance, pilots and metrics |
| `data/` | Synthetic CSVs (`category_demand_trends`, `buyer_intent_events`, `audience_segments`, `partner_pipeline`), `opportunity_sizing`, `pricing_packaging`, `prioritization_rice` |
| `sql/` | Demand index, segment sizing, k-anonymity check, plus a SQLite loader (`python build_db.py && python run_queries.py`) |
| `api/` | `openapi_data_api.json`, `example_error_suppressed.json` |
| `events/` | `event_taxonomy.json` (12 product events) |
| `wireframes/` | SVG screens (drag into Figma to edit) + overview PNG |
| `roadmap/` | `roadmap.jpg`, `roadmap.csv` |
| `model/` | `revenue_model.xlsx` (blue cells are inputs) |
| `prototype/` | `lovable_prompt.md` to build a clickable prototype yourself |

## Run the SQL
```bash
cd sql
pip install pandas
python build_db.py
python run_queries.py
```

## Tools
Claude (structuring and drafting), Perplexity (desk research), Notion (working doc), Cursor (SQL and scripts), Excel/Sheets (model), Figma (refine the SVG wireframes).
*Edit this line to match the tools you actually used.*
