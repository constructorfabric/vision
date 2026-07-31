---
marp: true
theme: rose-pine-moon
paginate: true
size: 16:9
---

# Constructor Fabric OSS Vision

> NOTE: This document is a draft. It details the OSS dimension of the [Constructor Fabric Vision](CONSTRUCTOR_FABRIC_VISION.md).

**"OSS" = Operations Support System** — the reusable operational-capability layer of the Fabric, delivered as **gears**. Open source is the delivery and governance model that makes it shareable.

---

Constructor Fabric OSS is the **shared foundation for any company building a complex, AI-native software stack**:

composable, secure-by-default platform components — **gears** — for tenancy, authorization, licensing, quotas, metering, events, and GenAI capabilities.

- Delivered as Apache-2.0 open source
- Developed spec-first, quality-gated on every artifact
- Written once, owned collectively, assembled by each vendor into their own product

---

## 1. Open Design

This vision is a living document, developed in the open.

The authoritative definitions live in the public repositories — the Architecture Manifest, the gear catalog, the expert checklists, and each gear's PRD → ADR → DESIGN chain — all traceable, all inspectable.

The vision states where the estate is going; the repositories state how it gets there.

---

## 2. Why a Shared OSS Gear Estate

Every company building multi-tenant XaaS re-solves the same problems in every service: tenant isolation, authentication and authorization, licensing and quota, usage metering, consistent APIs, observability, safe data access.

Solved separately, these are undifferentiated cost centers — re-implemented, re-audited, re-broken, per product, per company.

The gear estate solves them **once, correctly, in the open**.

---

## 2. Why a Shared OSS Gear Estate (principles)

- **The secure path is the default path** — tenant-scoped data access, policy enforcement, and credential handling are structural; there is no unscoped shortcut to accidentally use
- **Architecture is executable, not aspirational** — compile-time lints enforce layer boundaries, API conventions, and security invariants in CI
- **AI-native by design, deliberately** — correctness rules live as types, schemas, lints, tests, and CI checks with deterministic feedback; AI-assisted development does not make the rules optional
- **One codebase, many deployment shapes** — edge single-node, bare-metal multi-node, Kubernetes: a configuration choice, not a rewrite
- **Extensibility without forking** — the Global Type System lets adopters add types, permissions, and license kinds without touching existing gears

---

## 3. Who It's For — and Why

- **XaaS / SaaS vendors** — the undifferentiated 80% of their platform arrives pre-integrated and hardened; engineering concentrates on the 20% customers actually buy
- **Platform vendors** — platform substrate is a commons problem, product semantics are theirs: consume downstream, contribute generalized capabilities upstream
- **Cyber-protection & enterprise software** — integration gears bind existing systems of record (IdP, licensing, vaults, billing): adoption without surrendering what already works

---

## 3. Who It's For — and Why (continued)

- **GenAI builders** — chat, model and prompt registries, agent memory, LLM gateway, MCP tooling: governed, metered, tenant-scoped platform citizens rather than ad-hoc glue
- **On-prem / edge vendors** — a single-binary edge shape and a Kubernetes shape from one codebase; the appliance is no longer a fork of the cloud product

**Roles:** platform architects (enforced boundaries) · product managers (spec-first artifacts) · backend engineers (pre-integrated backbone) · security & compliance (structural defense-in-depth and audit) · AI engineering teams (a machine-checkable rulebook built for their agents)

---

## 3. The Sweet Spot

**Companies whose differentiation is above the platform layer — but whose credibility depends on it.**

Too sophisticated for no-code, too focused to fund a hundred-person platform organization: product companies that need hyperscaler-grade tenancy, security, metering, and AI plumbing with a platform team of ones and tens.

The estate compounds hardest where multi-tenancy is heavy, deployments span edge-to-cloud, compliance is non-negotiable, and AI-assisted engineering is the operating model.

---

## 4. The Five Quality Vectors — The Core Differentiator

Frameworks compete on features; platforms are chosen on **trust**. Every gear's requirements carry a mandatory five-vector analysis — named show-stopper requirements with rationale, before any code exists:

| Vector | In one line |
| --- | --- |
| **Efficiency** | Lean by construction — no toil, no waste, no manual steps where machinery can stand |
| **Reliability** | Fault tolerance and recovery designed in, verified per gear |
| **Performance** | Testable bounds, not adjectives — carried from spec to telemetry |
| **Security** | Defense-in-depth as structure: scoped data paths, fail-closed policy |
| **Versatility** | Composable, replaceable, extensible without forking |

Metrics and guiding questions: see the [Constructor Gears Quality Framework](CONSTRUCTOR_GEARS_QUALITY_FRAMEWORK.md).

---

## 4. Why the Vectors Win

The vectors run the full lifecycle: five-vector analysis in every gear PRD → validated bounds at design → per-vector telemetry in operation — backed by expert checklists across twelve-plus expertise domains with severity gates that stop work rather than annotate it.

- The legacy incumbent sells quality as a brand promise you can't inspect and a renewal you can't predict
- A pile of point frameworks leaves quality as your integration problem
- Here, quality is a **shared, inspectable contract** — and the same five vectors govern the adopters' own platforms

A buyer, a partner, or a regulator reads **one quality language** across the commons and everything built on it.

---

## 5. The Estate — Three Tiers (how the code is layered)

Reading bottom-up; every piece of the OSS sits in exactly one tier:

| Tier | Role |
| --- | --- |
| **Service gears** | *Pick what your product needs* — the optional capability menu: chat, files, notifications, LLM gateway, approvals, workflows… |
| **System gears** | *Always on, in every deployment* — the mandatory backbone: gateway, authentication, tenancy, policy, licensing, quotas, audit, usage |
| **Toolkit** | *The shared runtime library — not a gear* — gear discovery and lifecycle, secure data access with automatic tenant scoping, one API dialect, canonical errors, observability |

**In one breath:** a vendor's product = Toolkit + all system gears + the service gears it selects. Service gears rely on system gears through stable contracts — never sideways, never in circles.

---

## 5. The Estate — Six Categories (what we commit to build)

**The categories are the functional catalog of the OSS**: the capability areas the commons commits to building and maintaining. A *tier* says where a gear sits; a *category* says what it does. Every gear has exactly one of each.

| Category | Representative gears |
| --- | --- |
| API Ingress | API Gateway — the single public entrypoint |
| Core Platform Services | Account Management · Policy Manager · License Manager · Outbound API Gateway |
| Core Platform Integration | Tenant / Auth / License Resolvers · Credentials Store · Event Broker |
| Core Functionality | Usage Collector · Quota Enforcer · Types Registry · Audit · Events · Notifications · Jobs · Files · Approvals |
| Gen AI | LLM Gateway · Chat Engine · Model / Prompt / Agent registries · Agent Memory · MCP Registry |
| Serverless | Function & workflow runtimes · Settings · Durable Objects · Cluster coordination |

---

## 5. One Mandatory Request Chain

Every request crosses the same chain — so security, entitlement, and metering are **properties of the platform**, not per-gear diligence:

`Gateway → Auth Resolver → Policy → License Resolver → Execution → Tenant Resolver → Audit / Usage`

**BSS building blocks ride the same rail**: double-entry ledger, plan-price, and product-SKU gears seed the commercial layer that operations feed.

New capabilities enter the estate **demand-first**: an upstream-requirements intake with named requesting sources and traceable identifiers, reviewed before any code exists.

---

## 6. High-Level Scenarios

- **The platform vendor consuming the commons** — map the control-plane catalog onto gear layers; assemble quotas, usage, events, tenancy and licensing from the estate; build only what is genuinely its own; inherit the estate's hardening and evolution
- **The vendor contributing upstream** — a product requirement proves generic at its core; its generic half enters the estate as an upstream-requirements intake with two-way traceability (worked example: a fleet-management control plane contributed as the `fleet-control` gear intake by Virtuozzo). The product keeps its bindings; the commons gains a capability every participant can use

---

## 6. High-Level Scenarios (continued)

- **The GenAI product team** — agents, models, and tools specified as governed resources; composed from LLM Gateway + registries + memory + workflows; usage metered per tenant, policies enforced at admission, audit built in
- **The edge / appliance vendor** — same gears, single-node shape: the appliance and the cloud product are one codebase with two configuration files

---

## 7. The Development Discipline

**Whose discipline is this?** It governs how the OSS itself is built: every gear in the commons — from any participating company — passes these gates before it ships.

It is **not** imposed on applications built on top: products that consume gears inherit the *results* — pre-hardened, pre-audited, contract-stable components — without adopting the process.

Adopters who want the same rigor can reuse the machinery as-is — Virtuozzo, for example, runs the same spec-driven lifecycle and five-vector analysis for its own platform.

---

## 7. The Development Discipline — Four Promises

- **Automation** — the spec-driven lifecycle (PRD → ADR → DESIGN → DECOMPOSITION → FEATURE → CODE) runs on Constructor Studio workflows; deterministic gates run locally before CI; the whole platform runs on a laptop
- **Atomization** — capabilities are gears; requirements carry stable traceability identifiers; scope moves in auditable atoms
- **Optimization** — one API dialect, one error taxonomy, one security data path, replaceable backbone services; deployment shape is configuration
- **Repeatability** — templates, checklists, and worked examples make the tenth gear cost a fraction of the first; fast time-to-value comes from never re-negotiating the low-level components

---

## 8. Interconnections

- **Gears ↔ adopter platforms** — consume downstream, contribute upstream, federated repositories with cross-repo traceability; the same adoption pattern is open to every participant
- **Gears ↔ Constructor Studio** — Studio authors, validates, and traces the spec chain; the estate ships a Studio kit so every participant works the same lifecycle
- **Gears ↔ Constructor Insight** — operations telemetry, including the per-vector instruments, feeds the Insight layer of the Fabric vision
- **Gears ↔ vendor systems of record** — integration gears bind existing IdPs, license managers, vaults, and billing systems; participation never requires surrendering systems of record

---

## 9. The Power of Open Source

Open source is not an ideology here — it is the specific mechanism by which participating companies draw value:

1. **Shared build, shared maintenance** — the undifferentiated majority of any platform is built once; each participant pays a share, not the whole
2. **Trust through openness** — Apache-2.0, signed provenance on every commit, published security policy: adoptable by enterprises because it is inspectable by them
3. **No lock-in, by construction** — SDK-first contracts, replaceable backbone gears, plugin-based extension, type-system extensibility without forking
4. **Neutral stewardship** — maintained under the Constructor Fabric Foundation: a commons, not a single vendor's SDK
5. **The flywheel** — each adopter's generalized contributions enlarge the estate, which lowers the next adopter's cost, which attracts contributions

---

## 10. Participation in Constructor Fabric OSS

- **Adopt** — take the toolkit and gears under Apache-2.0; start greenfield, or integrate individual gears behind an existing platform via plugins
- **Propose** — new capabilities enter as upstream-requirements intakes: requirements with requesting sources and priorities, reviewed before code exists
- **Contribute** — spec-first for large features, signed commits, deterministic local gates, checklist-driven review, maintainer approval to merge
- **Co-govern** — governance, roadmap, and maintainer processes live in a shared cross-repo governance space; participating companies shape the estate's direction there
- **Report** — security disclosures through the published policy, with committed acknowledgment and fix windows
