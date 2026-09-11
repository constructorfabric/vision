---
marp: true
theme: rose-pine-moon
paginate: true
size: 16:9
---

# Constructor Fabric BSS Vision

> This document details the BSS dimension of the Constructor Fabric Vision.

**"BSS" = Business Support System** — the commercial-execution layer of the Fabric, delivered as **gears**. It owns the commercial truth — catalog, subscriptions, contracts, entitlements — that both **governs what the platform delivers to each tenant** and turns that usage into revenue. Open source is the delivery and governance model that makes it shareable.

---

Constructor Fabric BSS is the **shared foundation for monetizing any complex, AI-native software stack**:

composable, secure-by-default commercial components — **gears** — for product catalog, pricing, rating, subscriptions, contracts, billing, invoicing, and payments.

- Delivered as Apache-2.0 open source
- Developed spec-first, quality-gated on every artifact
- Written once, owned collectively, assembled by each vendor into its own monetization stack

It is the commercial sibling of the OSS gear estate (the OSS Vision) — a control loop, not a one-way revenue tap: OSS runs and meters the platform, while BSS owns the commercial truth (offers, subscriptions, contracts, entitlements) that **governs what the platform provisions and enforces** — and turns the resulting usage into revenue.

---

## 1. Open Design

This vision is a living document, developed in the open.

The authoritative definitions live in the public repositories — the Architecture Manifest, the gear catalog, and each gear's PRD → ADR → DESIGN chain — all traceable, all inspectable.

The vision states where the commercial estate is going; the repositories state how it gets there. Where reality has moved ahead of this document, the repositories win — this vision is corrected to match.

---

## 2. Why a Shared BSS Gear Estate

Every company selling XaaS re-solves the same commercial problems in every product: metered usage into charges, plans and price lists, subscriptions and proration, contracts and committed spend, invoices and credit notes, tax and FX, a double-entry ledger, revenue recognition, dunning, and payouts.

Solved separately, these are undifferentiated cost — and worse, **financial and compliance risk**: re-implemented, re-audited, re-broken, per product, per company.

The BSS estate solves them **once, correctly, in the open** — and makes the resulting financial record inspectable rather than a black box.

---

## 2. Why a Shared BSS Gear Estate (principles)

- **Financial correctness is structural** — an append-only, double-entry ledger with idempotent posting; posted invoices are immutable; corrections flow only through credit/debit notes, never in-place edits
- **Compliance is built in, not bolted on** — ASC 606 recognition, tax and FX rate-lock, jurisdiction-compliant invoice numbering, and long-horizon retention are properties of the estate
- **Usage becomes revenue on one traceable rail** — every charge traces back to its usage or subscription source, its price snapshot, and its posted journal entry
- **Multi-tenant, multi-party by construction** — every commercial fact carries `{resourceTenantId, payerTenantId, sellerTenantId}`, so owner → partner → end-customer economics are native, not retrofitted
- **Extensibility without forking** — the Global Type System lets adopters add pricing models, tax jurisdictions, and commercial types without touching existing gears

---

## 3. Who It's For — and Why

- **XaaS / SaaS vendors** — the undifferentiated commercial 80% (catalog, rating, billing, invoicing, ledger) arrives pre-integrated and audit-ready; engineering concentrates on the pricing and packaging that actually differentiate
- **Service providers & resellers** — owner → partner → end-customer billing chains, price-list overrides, and consolidated invoicing are first-class, not a bespoke integration
- **ISVs modernizing legacy products** — integration gears bind existing ERP/GL, PSP, tax engines, and CRM: monetize as a subscription platform without surrendering systems of record

---

## 3. Who It's For — and Why (continued)

- **GenAI builders** — meter model, agent, and tool usage through the platform and turn it into governed, tenant-scoped, invoiceable revenue — monetization as a platform citizen, not ad-hoc glue
- **Platform & marketplace vendors** — the commercial substrate is a commons problem; product packaging and marketplace economics are theirs: consume downstream, contribute generalized capabilities upstream

**Roles:** finance & RevOps (an auditable ledger and recognition they can defend) · product & pricing managers (spec-first plans, prices, and tariffs) · partner managers (multi-tier economics) · billing engineers (a pre-integrated revenue backbone) · compliance & audit (structural immutability and evidence).

---

## 3. Who It's For — The Sweet Spot

**Companies whose differentiation is above the billing layer — but whose revenue integrity depends on it.**

Too sophisticated for a hosting-panel biller, too focused to fund a Zuora-scale revenue platform: product companies that need enterprise-grade metering, multi-tenant billing, tax/FX, and ASC 606 with a commercial-platform team of ones and tens.

The estate compounds hardest where billing is usage-based, tenancy and partner tiers are heavy, compliance is non-negotiable, and deployments span edge to cloud.

---

## 4. The Five Quality Vectors — The Core Differentiator

Billing platforms are chosen on **trust in the numbers**. Every gear's requirements carry a mandatory five-vector analysis — named show-stopper requirements with rationale, before any code exists:

| Vector | In one line (BSS lens) |
| --- | --- |
| **Efficiency** | Automated bill runs and postings — no manual invoicing, exceptions only by reason code |
| **Reliability** | Zero financial-content loss: immutable posted invoices, idempotent postings, reproducible from snapshots |
| **Performance** | Bounded bill-run throughput and lookup latency — carried from spec to telemetry |
| **Security** | Tenant-isolated financial data by default; cross-tenant access is elevated and audited |
| **Versatility** | Multi-currency, multi-jurisdiction, multi-tier — new pricing and tax shapes without a rewrite |

Metrics and guiding questions: see the [Constructor Gears Quality Framework](CONSTRUCTOR_GEARS_QUALITY_FRAMEWORK.md).

---

## 4. Why the Vectors Win

The vectors run the full lifecycle: five-vector analysis in every gear PRD → validated bounds at design → per-vector telemetry in operation — backed by expert checklists with severity gates that stop work rather than annotate it.

- The hosting-panel biller sells simplicity you outgrow the day you add a second tier or a second currency
- The enterprise revenue suite sells trust as a brand promise you cannot inspect and a renewal you cannot predict
- Here, financial quality is a **shared, inspectable contract** — the ledger, its invariants, and its evidence are open

A finance leader, a partner, or an auditor reads **one quality language** across the commons and everything built on it.

---

## 5. The Estate — Where BSS Sits

BSS gears ride the **same rail** as the OSS estate — they are not a separate platform:

| Tier | BSS role |
| --- | --- |
| **Service gears** | *Pick what your commercial model needs* — invoicing, statements, marketplace, portals |
| **System gears (shared with OSS)** | *Always on* — gateway, authentication, tenancy, policy, licensing, quotas, audit, and **usage collection** are consumed, not rebuilt |
| **Toolkit** | *Shared runtime* — secure tenant-scoped data access, one API dialect, canonical errors, observability |

**In one breath:** a vendor's monetization stack = Toolkit + the OSS system gears + the BSS gears it selects. BSS is the commercial layer that operations feed.

---

## 5. The Estate — BSS Categories (what we commit to build)

**The functional catalog of the BSS.** A *tier* says where a gear sits; a *category* says what it does.

| Category | Representative gears |
| --- | --- |
| Product & Catalog | Product & SKU registry · Plan & Price modeling |
| Rating & Charging | Tariffs (price resolution) · Rating Engine (usage → billable charges) |
| Subscriptions & Entitlements | Subscription lifecycle · entitlement issue/revoke |
| Contracts & Agreements | Contract terms · committed usage · SLA |
| Billing & Invoicing | Billing Ledger & Balances · Invoice Generation & Lifecycle · Statements |
| Payments, Refunds & Credits | Payment application · refunds · credit notes |
| Taxation & Currency | Tax Engine · FX Rate Provider |
| Partner & Marketplace | Multi-tier/reseller economics · vendor onboarding, fees & payouts *(add-on)* |
| Revenue Assurance & Analytics | Usage↔rated↔posted reconciliation · commercial telemetry |

---

## 6. The Usage-to-Revenue Rail

Every charge crosses the same chain — so pricing, financial truth, and compliance are **properties of the estate**, not per-product diligence:

`Usage Collector (OSS) → Rating → Tariffs (price resolution) → BillableItem → Invoice → Billing Ledger (post · ASC 606) → Payments → Revenue Assurance`

- **Subscriptions** emit recurring `BillableItem`s onto the same rail; **Contracts** override catalog pricing upstream
- **Posted invoices are immutable**; corrections are credit/debit notes with their own posted evidence
- New commercial capabilities enter **demand-first**: an upstream-requirements intake with named requesting sources, reviewed before any code exists

**Sequencing follows the rail:** stand up the usage → invoice loop end-to-end first, then layer tax, contracts, partner economics, and payments onto it.

---

## 7. Finance & Compliance as a First-Class Contract

This is where the BSS estate earns its trust — and where it is already real, not aspirational:

- **Append-only double-entry ledger** — balanced journals, per-tenant zero-sum invariants, tamper-evident audit
- **ASC 606 revenue recognition** — performance-obligation tags, SSP snapshots, contract-liability deferral, recognition schedules
- **Tax & FX rate-lock** — rates frozen for the posted period; FX revaluation and realized/unrealized gain-loss handled in the ledger
- **Legal-grade invoicing** — jurisdiction-compliant, monotonic, non-reusable numbering; per-jurisdiction tax breakdown; e-invoicing profiles
- **Retention & privacy reconciled** — long-horizon financial retention with GDPR right-to-erasure honored by tombstoning PII, never deleting financial facts

**One financial truth — inspectable, reproducible, in the open.**

---

## 8. High-Level Scenarios

- **The service provider consuming the commons** — assemble catalog, tariffs, rating, subscriptions, invoicing, and ledger gears; monetize its own platform usage; inherit ASC 606, tax, FX, and audit hardening instead of rebuilding them
- **The vendor contributing upstream** — a product's billing capability proves generic at its core; its generic half enters the estate as an upstream-requirements intake with two-way traceability (worked example: **Virtuozzo** contributing its VHP **billing-ledger**, **product-sku**, and **plan-price** gears into the commons). The product keeps its bindings; the commons gains capabilities every participant can use

---

## 8. High-Level Scenarios (continued)

- **The GenAI product team** — usage of models, agents, and tools is metered through the platform and rated, invoiced, and posted like any other consumption; AI monetization is a first-class, tenant-scoped commercial flow
- **The marketplace / reseller (add-on)** — multi-axis identity (`resource` / `payer` / `seller`) plus fee schedules and payouts let a provider run partner and vendor economics on the same ledger and the same rail

---

## 9. The Development Discipline — Four Promises

The same spec-driven discipline as the OSS estate governs how every BSS gear is built; consumers inherit the *results*, not the process.

- **Automation** — the spec-driven lifecycle (PRD → ADR → DESIGN → DECOMPOSITION → FEATURE → CODE) runs on Constructor Studio workflows; deterministic gates run locally before CI
- **Atomization** — commercial capabilities are gears; requirements carry stable traceability identifiers; scope moves in auditable atoms
- **Optimization** — one API dialect, one error taxonomy, one secure data path; the ledger is the single posting authority, Billing the single rounding authority
- **Repeatability** — templates, checklists, and worked examples make the next gear cost a fraction of the first

---

## 10. Interconnections

- **BSS ↔ OSS** — a two-way interlock: **usage flows up** (Usage Collector → Rating, data-plane), **provisioning flows down** (Subscriptions → Policy gate → OSS provisioning, control-plane, confirmed back); BSS consumes the shared tenancy, authz, licensing, quota, audit, and event-broker system gears
- **BSS ↔ Constructor Studio** — Studio authors, validates, and traces the spec chain; the estate ships a Studio kit so every participant works the same lifecycle
- **BSS ↔ Constructor Insight** — revenue, margin, usage, and churn telemetry feeds the Insight layer of the Fabric vision
- **BSS ↔ vendor systems of record** — integration gears bind existing ERP/GL, PSP, tax engines, and CRM through the outbound gateway; participation never requires surrendering systems of record

---

## 11. AI-Native Commercial Intelligence (forward-looking)

Built on the estate's GenAI gears (LLM gateway, model/prompt registries, agent memory) and Insight telemetry — governed, metered, tenant-scoped, and deliberately a **later** layer:

- **Offer recommendation** — next-best plan/add-on from usage and peer patterns
- **Churn-risk scoring** — early-warning signals from commercial telemetry
- **Cost-anomaly explanation** — plain-language "why did my bill change" grounded in the rated line items
- **Contract intelligence** — extract terms, obligations, and risk from agreements
- **Peer-based opportunity detection** — expansion signals across comparable tenants

The financial core stays deterministic and auditable; AI advises and explains — it never posts the ledger.

---

## 12. Competitive Positioning

An **open BSS commons** competes on integration, inspectability, and cost — not feature-parity checkboxes:

| Alternative | Their shape | The commons' edge |
| --- | --- | --- |
| Hosting-panel billers (e.g. WHMCS) | Simple, hosting-centric, hard to extend | Modular gears, multi-tenant and multi-tier from day one |
| Full-suite commerce (e.g. CloudBlue) | Broad but heavy, vendor lock-in | CloudBlue-level flexibility without the lock-in or weight |
| Enterprise revenue suites (e.g. Zuora, Chargebee, BillingPlatform) | Deep subscription/ASC 606, high cost & complexity | Enterprise-grade finance, deployable lightweight, extensible, open |

Deeply integrated with the platform below it, SP-aligned, and extensible without forking — quality and financial truth are a shared, inspectable contract rather than a vendor promise.

---

## 13. The Power of Open Source

Open source is the specific mechanism by which participants draw value:

1. **Shared build, shared maintenance** — the undifferentiated majority of any billing platform is built once; each participant pays a share, not the whole
2. **Trust through openness** — Apache-2.0, signed provenance, a published security policy, and an **inspectable ledger** make it adoptable by finance and audit
3. **No lock-in, by construction** — SDK-first contracts, replaceable gears, plugin extension, type-system extensibility without forking
4. **Neutral stewardship** — maintained under the Constructor Fabric Foundation: a commons, not a single vendor's SDK
5. **The flywheel** — each adopter's generalized contributions enlarge the estate, which lowers the next adopter's cost, which attracts contributions

---

## 14. Participation in Constructor Fabric BSS

- **Adopt** — take the Toolkit, OSS system gears, and BSS gears under Apache-2.0; start greenfield, or integrate individual gears (e.g. the ledger) behind an existing biller via plugins
- **Propose** — new commercial capabilities enter as upstream-requirements intakes: requirements with requesting sources and priorities, reviewed before code exists
- **Contribute** — spec-first for large features, signed commits, deterministic local gates, checklist-driven review, maintainer approval to merge
- **Co-govern** — governance, roadmap, and maintainer processes live in a shared cross-repo governance space; participating companies shape the estate's direction there
- **Report** — security and financial-integrity disclosures through the published policy, with committed acknowledgment and fix windows
