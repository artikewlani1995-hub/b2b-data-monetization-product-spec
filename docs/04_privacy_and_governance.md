# 04: Privacy-First Design and Data-Sharing Governance

> Product-level design for a portfolio spec. Not legal advice; in a real setting this goes through Legal, Security and Compliance, and applicable data-protection law (for example India's Digital Personal Data Protection Act, 2023) governs.

## 1. Principles
1. **Aggregate by default.** V1 products never expose record-level or buyer-level data.
2. **Purpose limitation.** Every external release has a documented purpose, recipient, and expiry.
3. **Consent respected.** Audience products use only records where third-party sharing consent exists; consent is checked at activation time, not just at collection.
4. **Data minimisation.** Release the least granular cut that serves the use case.
5. **Auditable.** Every release is logged, reviewable, and revocable.

## 2. Technical controls
| Control | Design |
|---|---|
| Small-cell suppression | A cell with fewer than **K = 50** distinct buyers is suppressed (sample query: `../sql/k_anonymity_check.sql`, uses K=20 on the tiny synthetic sample) |
| Differencing protection | Limit overlapping queries and cross-cuts that could be subtracted to isolate a small group |
| Pseudonymous IDs | No names, phone numbers or emails in any analytical table |
| Consent filter | `consent_third_party_sharing = 1` required for any segment export; exclusions logged (`consent_check_failed`) |
| Access | Role-based; API keys per account; rate limits |
| Clean-room option (V2) | For audience matching, partners bring their data to a controlled environment; no raw export |

## 3. Governance process
| Step | Owner | Output |
|---|---|---|
| New data product or release type proposed | Product | One-page data release request (purpose, fields, recipient, cadence, retention) |
| Review | Legal + Security + Data Protection lead | Approve / modify / deny, logged (`partner_data_request_logged`) |
| Contract | Legal | Permitted use, no re-identification, onward-sharing ban, audit rights, deletion on exit |
| Launch | Product | Monitoring on suppression rate, abuse, complaints |
| Quarterly review | Governance council | Revoke or adjust releases; incident log |

## 4. Red lines
No sale of personal contact data. No release enabling re-identification. No use of data for a purpose different from what the buyer-user consented to. No AI-training data deals until consent, licensing and IP questions have been resolved with Legal.

## 5. Why this is commercial, not just compliance
Enterprise buyers ask for this in security reviews. A documented governance model shortens procurement and is the reason a partner picks a data product over a scraped alternative.
