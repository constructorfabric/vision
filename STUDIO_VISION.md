---
marp: true
theme: rose-pine-moon
paginate: true
size: 16:9
---

<!--
Investor-first rewrite of Studio vision deck.
Source basis: user's Marp draft, refined for investor narrative, wedge, moat, ROI, and competitive positioning.
-->


# 1. What is Constructor Studio

Constructor Studio is an AI-native software construction workspace that brings together every role, artifact, and activity across the software construction lifecycle into a single collaborative environment. Along with Constructor Insight and Constructor Gears, it is one of the elements of Constructor Fabric.

> **VERY IMPORTANT NOTE: Please read @CONSTRUCTOR_FABRIC_VISION.md first!**

Studio helps professional software development teams to safely, effectively, and predictably move from **product intent to operating the product**.
It is intended for 5–500 person SaaS and service-provider teams adopting AI, but unwilling to lose control, security, traceability, or delivery quality.

Constructor Studio is an **integrated** workspace – bringing together all scenarios in one place.

It is implemented as:
- A web application in a browser
- A desktop application for macOS, Linux, Windows, iOS/Android
- A CLI that can be used from other tools (less beneficial because most existing tools were created for developers and do not serve all other roles as well)

Constructor Studio works across the full Software Development Lifecycle (SDLC) and covers areas like:

## 1.1 Idea → Specs

- Standardized transformation of business ideas into structured engineering specifications
- Legacy code-to-spec generation – ingest large repositories of legacy code, generate full and consistent spec set
- BRD, PRD, ADR, DESIGN, DECOMPOSITION, and FEATURE frameworks (based on best industry practices and aligned with ISO 29148)
- Spec consistency checks (old specs vs new specs)
- AI-assisted generation, refinement, and reconstruction of missing specifications and architecture artifacts
- End-to-end provenance, governance, and traceability established before implementation begins


## 1.2 Specs → Code

- AI-native transformation of specifications into implementation, tests, and workflows
- Incremental decomposition and controlled generation across the SDLC lifecycle
- Full traceability between requirements, architecture, implementation, validation, and code comments
- Supports existing brownfield systems through reverse engineering and AI-assisted reconstruction


## 1.3 Code → Production

- Continuous validation between specifications, architecture, code, tests, and delivery artifacts
- Integrated governance, consistency analysis, and development-time validation workflows
- Cross-repository traceability and enterprise-scale consistency management
- Enables modernization, operational control, and predictable AI-assisted software delivery
- Traceability from production back to code and back to spec for continuous code optimization
- AI agent cost control  - spend caps, cross-provider routing, policies and audit


# 2. Constructor Studio Differentiators

Although Constructor Studio is not the first and not the only AI-assisted software development framework/toolset, it has a unique combination of differentiators:
1. End-to-end software development cost optimization - including operational costs in production
2. Support for large engineering organizations
3. Ability to adapt to any Software Development Lifecycle (SDLC)
4. Model-agnostic - not tied to a specific LLM and able to support different LLMs for different tasks and activities
5. Integration with existing tools

---

# 3. Problem Statement

The problems that Constructor Studio is built to address:

## 3.1 AI Costs
The costs associated with AI use are growing very fast, but the outcomes of this use are not very clear and are not well understood. The lack of proper company-wide guidelines and guardrails leads to inefficient use of AI - wrong models for the wrong tasks, multiple passes of the same context to the model, context growth with the lack of context compression, and the same tasks executed by multiple team members against the same or different models. Which AI work creates value vs. cost? Which agents, models, and prompts are efficient?


## 3.2 Developer-centric AI Tools
Modern AI tools were created with R&D in mind. Other organizations and functions - such as Product Management and GTM - are having a hard time adopting AI using R&D-centric tools (IDEs such as Cursor and source control systems like GitHub are not native Product Management tools, for example, and they require a very steep learning curve and do not provide convenient and efficient collaboration capabilities).

## 3.3 Lack of Handoff
AI coding tools help teams generate more code faster. But complex software delivery still breaks across handoffs. Artifacts created by one team at one stage of the SDLC are not always well received or consistently followed by another team. Do requirements, architecture, decisions, tests, and releases stay connected?

## 3.4 Lack of Feedback Loop
Most AI tools focus only on a few stages of the SDLC - around coding and software delivery. The operational aspect stays uncovered, and production feedback does not affect future decisions.

<div class="accent">
The strategic problem is controlling the full AI-assisted software delivery: value, cost, architecture, decisions, validation, and production readiness.
</div>

---

# 4. Why Now

1. Costs of AI-assisted software development are growing in 2026
2. While there are many companies that are experimenting and trying to build one or more tools covering a small portion of the SDLC, there is no single company that addresses the problems holistically.

---

# 5. The Most Cost-Efficient Software Development

Studio is designed for AI cost control, not just AI usage. This is achieved mainly by:
## 5.1 Multi-model support
It's possible to configure Constructor Studio to always use the model that is most efficient for a specific Activity and a specific Role:
  - Model routing by Activity type - code generation vs. document consistency check.
  - Small models for classification and extraction
  - Non-GPU models for simple checks
  - Large models only for hard reasoning
  - Own models for repeated enterprise tasks

## 5.2 Context compression

Constructor Studio condenses the information fed into AI models by using summarization, a sliding-window approach, relevance filtering, and token trimming/pruning.

## 5.3 Quality/cost benchmarking

Constructor Studio provides the tools to measure and monitor the overall costs of software development.
  - Cost of AI tokens
  - Cost of compute in development - through tight integration with Constructor Insight

## 5.4 Other cost-saving techniques
  - Prompt/version A/B testing
  - Incremental analysis & revalidation

Constructor Studio always provides the most cost-effective software development - while it is shipped with the most optimal configuration available at the moment, it is possible later, while using Studio, to request the most up-to-date configuration (model routing, context compression) and optionally apply it to the Studio instance.

While some organizations allow their team members to freely choose any AI model for any task, Constructor Studio allows centralized control over model routing. Organization administrators may decide to lock the Studio configuration - defining which models team members will use for which Activities.

<div class="accent">
Goal: lower AI cost per accepted change, not just more AI activity.
</div>


---

# 6. Target Customers

## 6.1 AI-assisted SaaS and service-provider teams

While in the future Constructor Studio may address a much wider audience, its initial target customers are engineering teams of 2+ people that:

- Already use AI coding tools and agents
- Have fragmented delivery systems and context
- Build production-grade, multi-tenant SaaS apps & platforms
- Need security, governance, approvals, and auditability
- Prefer open standards and no vendor lock-in

## 6.2 Buyer Personas

- Product Management: CPO, Director of Product Management, Product Manager
- R&D: CTO, Chief Architect, VP Engineering, Head of Platform, Head of R&D.

---
# 7. Constructor Studio Users

## 7.1 Actors

Constructor Studio automates the work of **Actors** - anything that performs a transformation in the Software Construction Lifecycle. Today that includes mostly humans. Tomorrow it will also include AI agents and external systems.
For example:
  - Human
  - AI Agent
  - External Tool
  - External System
  - Automated Pipeline

Each **Actor** may play one or multiple **Roles**.

## 7.2 Functions and Roles

It is intended for the following functions and roles:
  - Product Management (CPO, Director of Product, Product Owner, Product Manager, Program Manager) - Define what should be built
  - Product Marketing (CMO, Product Marketing Manager, Technical Marketing Manager, Marketing Communications Manager) - Position and launch products
  - User Experience Team (UX Researcher, UX designer, UI designers, Interaction designer, Design System Engineer) - Design user experience
  - R&D  (CDO, CTO, Chief Architect, Engineering Manager, Developer, AI Engineer) - Design and construct software
  - QA (QA engineers, performance engineers) - Validate quality
  - DevOps /DCO (SRE, DevOps) - Operate production systems
  - GTM (CRO, Regional VPs) - Sell and grow the business
  - Customer Success (Implementation teams, customer support, TAMs) - Earn from customers and support customer growth

# 8. Product Lifecycle
- Instead of focusing on the Software Development Lifecycle (SDLC) - where the focus was only the creation of a software product - Constructor Studio covers a much wider scope in the lifecycle of a software product, starting from Intent, transitioning to the construction of the product and then to the operation of the product, and learning toward the evolution and transformation of the product. So we will be using the term Software Construction Lifecycle (SCLC).
- Constructor does not dictate a specific Software Development Lifecycle (SDLC) - quite the opposite - it can be easily adapted to any SDLC used by the company and extended into a proper SCLC.
- Constructor Studio is shipped with one or more examples of supported SCLCs that can be used as is or can be customized to fit the company's needs.
- This SCLC includes 3 high-level phases: **Plan > Build > Operate** which are in turn split into 14 stages:

  **Intent → Vision → Discovery → Strategy → Definition → Design → Construction → Validation → Release → Operation → Support → Intelligence → Optimization → Evolution**

- For every Role and every Lifecycle Stage - Constructor Studio defines (configurable):
  1. Activities
  2. Inputs
  3. Outputs
  4. Quality gates
  5. Synchronization Checkpoints

For example (graph presented as a flat table):


| Role | Stage | Activities | Inputs | Outputs |
|---|---|---|---|---|
| Product Manager	| Intent | Identify opportunity, market analysis, define business goals | Market trends, customer feedback | Opportunity Statement |
| Product Manager	| Discovery	 | Customer interviews, JTBD, prioritization | Opportunity Statement | Problem Statements |
| Architect | Design  | Design system | Requirements | Architecture |
| Developer | Construction  | Implement solution | Architecture | Source Code
| QA | Validation	| Execute tests | Source Code | Test Results |
| SRE | Operations | Monitor production | Running System | Operational Metrics |


Or as a graph presented as a two-dimensional (Stages/Roles) table:

| Phase | Stage | Product Manager | Architect | Developer | QA | SRE | * |
|---|---|---|---|---|---|---|---|
| Plan | Intent | **Activities:** Identify opportunity, Market analysis, Define business goals<br> **Inputs:** Market trends; Customer feedback<br> **Outputs:** Opportunity Statement<br> **Quality Gate**: | | | | | |
| Plan | Discovery | **Activities:** Customer interviews; JTBD; Prioritization<br> **Inputs:** Opportunity Statement<br> **Outputs:** Opportunity Problem Statements<br> **Quality gate:** | | | | | |
| Build | Design | |**Activities:** Design system<br> **Inputs:** Requirements<br> **Outputs:** Architecture<br> **Quality Gate:**| | | | |
| Build | Construction | | | **Activities:** Design system<br> **Inputs:** Architecture<br> **Outputs:** Source Code<br> **Quality Gate:** | | | |


# 8. User Experience

- One of the unique differentiators of Constructor Studio is its excellent User Experience for all Roles participating in the creation of the software product. Some of these Roles are extremely technical (like developers or architects), and some are more business-oriented and less technical (like Product Management and UX Design).
- Constructor Studio provides the ability to perform activities with an adjustable level of complexity - one can start with an AI-assisted approach but still have the possibility to go deeper into manual operations.
- English is becoming a mainstream programming language (as well as many other human-spoken languages), and many modern tools are switching from the old UX paradigm - menus and buttons - to a more modern conversational approach, which has its own set of benefits and disadvantages. One of them is that you have to remember the sequence of actions that one needs to perform to accomplish the task - even if, to invoke the task, you can now use plain human language. Constructor Studio provides an intuitive User Experience with a short learning curve, where the next Action or Task is suggested to a User by Studio.
- Constructor Studio allows a result of one activity to be easily fed as an input to another activity. It's possible to feed multiple outputs of multiple activities as inputs to multiple activities.

---

# 9. Collaboration

For teams working together, Constructor Studio allows common guidelines, templates, processes, workflows, and artifacts to be set up and shared:
- By the same person across multiple projects
- By a team of people playing the same or different Roles
- For the whole organization
For example: templates of documents, stages in the process, and quality gates that every team member must follow.

Constructor Studio allows guardrails and quality gates to be set up for a team or for a whole organization.


While the greatest benefits can be achieved when Constructor Studio is used by a team of people, it also provides benefits for an individual contributor working on multiple projects at the same time - such as synchronization between Activities, routing outputs of activities as inputs to other activities, and reusing artifacts between projects.


---
# 10. Localization

- Constructor Studio can be easily localized into multiple locales. Localization includes not only user interface translation - but also things like currency format, date format, time format, working week start day, and right-to-left support.
- Each user collaborating on a project using Constructor Studio may use their own language/locale - and still collaborate successfully.

---

# 11. Constructor Fabric Elements

While each of the elements of Constructor Fabric can be used independently, they were designed to enrich each other when used together.

## 11.1 Constructor Studio & Constructor Insight Integration Advantages

Constructor Studio integrates with **Insight**, the connector, analytics, and benchmarking layer.

Constructor Insight can collect data from hundreds of systems:

- Git, GitHub, GitLab, Bitbucket
- MS Office, Teams, Zoom
- Jira, ADO, Linear, Confluence
- Jenkins, GitHub Actions, GitLab CI
- Claude Code, Windsurf, IDE tools
- Cloud, observability, security, and analytics tools

<div class="accent">
Insight provides cross-vendor data. Studio turns it into SDLC intelligence, recommendations, and validated actions.
</div>

---

# 12. Integrations

Constructor Studio is **not** the primary system of record.
Constructor Studio does not replace existing source control systems or AI models - instead, it integrates with them.

It is the **open-core control plane for AI-native software delivery**.

Core graph, connectors, actions, validators, and SDKs are open-source; enterprise teams can extend them without lock-in.

```text
Existing tools stay in place
Jira | ADO | GitHub | GitLab | Bitbucket | Confluence | Office | Teams | CI | Cloud | IDEs
        |
        | sync / events / connectors
        v
Studio shadow SDLC graph
Objects | attributes | relationships | states | history | evidence
        |
        | recommendations / validated actions / approved automation
        v
Controlled write-back
create ticket | update doc | open PR | run CI | assign owner | create release task
```

---

<!-- _class: table-md -->

# 13. Competitive Landscape

## 13.1 Competitor Categories

| Category | Examples | Main strength | Studio angle |
|---|---|---|---|
| AI app builders | Lovable, Bolt, v0 | Fast prototypes | Higher segment: secure SaaS, no lock-in |
| AI coding tools | Cursor, Claude Code, Windsurf | Developer productivity | Govern across tools, keep user choice |
| Repo platforms | GitHub Copilot, GitLab Duo | Code, PR, DevSecOps | Cross-vendor graph and validation |
| Work systems | Atlassian Rovo | Jira/work-item centered execution | Tool-agnostic open control plane |
| DevOps platforms | GitLab, Harness, GitHub | CI/CD, security, deployment | Improve work across systems |
| Autonomous agents | Devin-like systems | Task execution | Evidence, validators, human control |

---

# 13.2 Competitive Map

```text
                          Production / Governance Focused
                                      ^
                                      |
             GitLab / Harness         |           Studio
             GitHub / Atlassian       |   cross-SDLC control plane
                                      |
Single-tool / ecosystem --------------+-------------- Cross-tool / vendor-neutral
                                      |
             Cursor / Windsurf        |           emerging gap
             Claude Code              |
                                      |
             Lovable / Bolt / v0      |
                                      v
                              Prototype Focused
```

Studio should not fight every tool directly. It should orchestrate and govern across them — with open-core trust and no vendor lock-in.

---

<!-- _class: table-md -->

# 13.3 Studio vs Lovable

| Dimension | Lovable-style tools | Studio |
|---|---|---|
| Prototype speed | Strong | Good |
| Production SaaS | Partial | Core focus |
| Multi-tenancy | Limited | Core focus |
| RBAC / ABAC | Basic | Rich model |
| Service providers | Not primary | Core focus |
| Existing tool control | Limited | Core focus |
| On-prem/private deployment | Limited | Supported |
| Open core / no lock-in | Limited | Core focus |
| SDLC graph | Limited | Core architecture |
| Validators | Basic | Core architecture |

**Studio competes above prototypes: production SaaS, extensible core, no lock-in.**

---

<!-- _class: table-md -->

# 13.4 Studio vs AI Coding Tools

| Dimension | Cursor / Windsurf / Claude Code | Studio |
|---|---|---|
| Developer coding | Strong | Integrated |
| Local context | Strong | Strong via plugins |
| Cross-tool SDLC graph | Limited | Core |
| Product-to-code flow | Partial | Core |
| Validation loops | Partial | Core |
| Management visibility | Limited | Core |
| Governance | Limited | Core |
| Connector write-back | Limited | Core |
| Open workflow layer | Limited | Open core |

Studio should integrate with these tools, not replace them — users keep their IDE and model choices.

---

<!-- _class: table-md -->

# 13.5 Studio vs DevOps Platforms

| Dimension | GitHub / GitLab / Harness | Studio |
|---|---|---|
| CI/CD | Strong | Integrates |
| Repo / PR workflows | Strong | Integrates |
| Product and design context | Partial | Strong |
| Cross-vendor graph | Limited | Core |
| SaaS kits | Limited | Core |
| AI cost routing | Partial | Core |
| Shadow object model | Limited | Core |
| Human recommendation layer | Partial | Core |
| Vendor lock-in | High ecosystem pull | Avoided by open core |

Studio does not need to beat them at CI/CD. Studio improves work across them while reducing ecosystem lock-in.

---

# ROI Metrics

Studio should be measured by delivery outcomes.

<div class="cols">
<div>

**Speed**

- Faster PRD-to-task cycle
- Faster bug-to-PR cycle
- Faster release readiness review
- Less reviewer time wasted

</div>
<div>

**Quality and control**

- Higher requirement-to-test coverage
- Fewer stale design/code mismatches
- Fewer rejected AI-generated artifacts
- Lower AI cost per accepted change

</div>
</div>

Use these as customer proof points and pilot success metrics.

---

# Business Model

Open-core model:

- Core graph, actions, validators, connectors, and SDKs are open-source
- SaaS subscription per active R&D user
- Platform fee for team/company workspace
- Enterprise/private deployment premium
- Proprietary connector, kit, policy, and benchmark packs
- AI usage optimization or usage margin
- Professional services for proprietary kits and workflow rollout

Expansion path:

```text
Read-only insights -> recommendations -> approved automation -> enterprise control plane
```

---

# Moat Flywheel

```text
Open-source core adoption
   -> more connectors and community flows
   -> richer shadow SDLC graph
   -> better validators
   -> better recommendations
   -> more accepted automations
   -> more workflow evidence
   -> stronger kits, benchmarks, and enterprise pull
```

<div class="accent">
The moat is not one model or one agent. It is open-core distribution plus the SDLC graph, validated workflows, reusable kits, and accumulated evidence.
</div>

---

# Credible Wedge

#### Phase 1: Studio CLI PoC

- Repo-local CLI setup and IDE agent integration
- SDLC kit: PRD → DESIGN → decomposition → FEATURE → implementation
- Deterministic checks for artifacts, traceability, language, and links
- Dependency map across documents, code, tests, and reviews

#### Phase 2: Validated actions

- Gap analysis
- Contradiction detection
- Autonomous bug-fixing
- PR validation

---

# Expansion Roadmap

#### Phase 3: Centralized automation

- Team and role-based workspaces and collaboration
- Visual workflow builder and flow catalog
- UI/UX for workflows, approvals, exceptions, evidence, and handoffs
- Notifications and alerts for gaps, risks, stale work, and failures
- Dashboards for delivery health, AI cost, and release readiness

#### Phase 4: Enterprise control plane

- Insight integration at scale
- Private/on-prem deployment
- Advanced AI and world model
- Operations automation

---

# Key Investor Objections

## “This is too broad.”

Start with one wedge: validated workflows over existing tools for AI-assisted SaaS teams.

## “GitHub, GitLab, Atlassian will build this.”

They optimize their own ecosystems. Studio is open-core, cross-vendor, and integrates with Insight and Gears to complete development automation.

## “How do you prove ROI?”

Measure accepted PR rate, AI cost per accepted change, PRD-to-task cycle time, test coverage, release-readiness time, and review time saved.

---

# 2. Executive Summary

- **Market shift:** - AI coding agents are making code generation cheaper and faster
- **Skyrocketing costs** - Uncontrollable use of LLMs - when applied to an old-style SDLC - leads to growing bills from LLM providers
- **Gravity shift** - The weight shifts from code generation to intent definition and operations
- **New bottleneck:** - Validation, coordination, governance, and production readiness
- **Product:** - Studio is an open-core control plane over existing SDLC systems
- **How it works:** - Studio builds a shadow SDLC graph and runs validated actions over it
- **Moat:** - Open core adoption + Insight data + Studio automation + Gears kits + custom AI models and World Model
- **Customer promise:** - no migration, no vendor lock-in, own your SDLC graph and workflows

---
<!-- _class: appendix -->
<!-- _header: Appendix A -->
# Appendix A - High-Level Scenarios

# High-Level Scenarios - #1 Intent

This section provides examples of high-level scenarios for each **Role** and each **Stage**.

Role: Product Management

  - **Identify the opportunity** - Understand what changes in the market, customer behavior, technology, or business create an opportunity.
  - **Understand the problem** - Determine which problems are worth solving.
  - **Define target customers** - Decide who the product is for.
  - **Quantify the value** - Estimate whether solving the problem matters.
  - **Explore solution space** - Evaluate possible approaches without committing.
  - **Define strategic positioning** - Decide why the product should win - identify the "magic sauce" - unique differentiators (special skills, key people, relationships, ecosystem, channel)
  - **Formulate intent** - Convert research into a clear decision - should we do it or not, and why?

---
<!-- _class: appendix -->
<!-- _header: Appendix A -->
# High-Level Scenarios - #2 TBD - the rest of the stages

...