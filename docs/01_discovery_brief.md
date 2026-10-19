# 01: Discovery Brief: Data Monetization on a B2B Marketplace

> **Nature of this work:** a self-initiated 0 to 1 product spec for a *generic* B2B marketplace, written in response to a
> role description for a data-monetization product manager. It is a portfolio exercise: no company data, no real customers.
> All numbers are illustrative or synthetic. Company-specific details have been deliberately left out.

## 1. The asset (hypothetical)
A B2B marketplace that holds, in aggregate: buyer enquiries and search behaviour by category and region, verified business
profiles, product demand trends over time, and supplier activity. The question: **which data products could create new revenue
without compromising privacy or the core marketplace?**

## 2. Opportunity long-list
| Opportunity | Buyer | Why they'd pay | Key risk |
|---|---|---|---|
| Category demand insights (reports) | Analysts, consultancies, investors, suppliers | Early, ground-level demand signal | Needs aggregation to stay privacy-safe |
| Data API (aggregate endpoints) | Fintech, analytics and SaaS firms | Integrate demand signals into their products | Support burden, quota abuse |
| Audience segments | Advertisers, agencies, adtech | Reach buyers with real purchase intent | Consent, targeting misuse |
| Data licensing | Enterprise, data marketplaces | Dataset for their models and research | Re-identification, purpose creep |
| AI/LLM training data | AI labs | Domain-specific business text and signals | Licensing, consent, IP, reputational risk |
| Custom enterprise data products | Large enterprises | Bespoke analysis | Doesn't scale; services trap |

## 3. Prioritisation
RICE scoring in [`../data/prioritization_rice.csv`](../data/prioritization_rice.csv). Decision:
1. **V1: Category Demand Insights** (reports first, then API on the same pipeline). Lowest privacy risk, fastest to validate, builds the aggregation and governance muscle everything else needs.
2. **Pilot in parallel: Audience segments**, consent-gated, with one activation partner. Revenue-led and a test of governance.
3. **Later:** licensing, then AI training data, only after governance is proven.

## 4. Hypotheses to validate
| # | Hypothesis | How to test | Signal for success |
|---|---|---|---|
| H1 | Analysts and suppliers will pay for a monthly demand index | 15 customer interviews + 3 paid pilots using a manual report | 3 pilots convert to paid; pricing fits $3k to $9k |
| H2 | An API with 12-month history increases willingness to pay vs PDF | Fake-door on pricing page + sandbox beta | 30%+ of report trialists request API access |
| H3 | Advertisers value consented high-intent segments over generic audiences | One paid pilot with an activation partner | Measurable lift vs partner baseline; renewal intent |
| H4 | Privacy-first design is a sales asset, not a tax | Ask in discovery calls; track security-review cycle time | Reviews complete in under 3 weeks |

## 5. Discovery plan
- **Weeks 1 to 2:** 15 interviews (analysts, agencies, fintech, supplier strategy leads), partner landscape scan (Perplexity for desk research, Notion for synthesis).
- **Weeks 3 to 4:** manual "concierge" report to 5 design partners; legal and privacy review of data flows.
- **Weeks 5 to 8:** 3 paid pilots; decide go/no-go on build.
