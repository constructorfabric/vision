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

> NOTE: Constructor Studio is one of the 3 main Elements of Constructor Fabric. Please read @CONSTRUCTOR_FABRIC_VISION.md first!

# What is Constructor Studio

Constructor Studio is an AI-native software construction workspace that brings together every role, artifact, and activity across the software construction lifecycle into a single collaborative environment.

Studio helps 5–500 person SaaS and service-provider teams adopting AI to safely, effectively, and predictably move from **product intent to operating the product** in one workspace without losing control, security, traceability, or delivery quality.

---

# Executive Summary

- **Market shift:** - AI coding agents are making code generation cheap and fast
- **Gravity shift:** - the weight shifts from code generation to intent definition and operations
- **New bottleneck:** - validation, coordination, governance, and production readiness
- **Product:** - Studio is an open-core control plane over existing SDLC systems
- **How it works:** - Studio builds a shadow SDLC graph and runs validated actions over it
- **Moat:** - open-core adoption + Insight data + Studio automation + Gears kits + custom AI models and World Model
- **Customer promise:** -no migration, no vendor lock-in, and ownership of your SDLC graph and workflows

---

# The Problem

AI coding tools help teams generate more code faster. But complex software delivery still breaks across handoffs:

- AI tools are still centered on R&D workflows (e.g Claude Code and GitHub), making adoption harder for product managers, UX, GTM, and other non-engineering roles
- Teams struggle to see which AI work creates value versus cost
- It is hard to know which agents, models, and prompts are actually effective
- Requirements, architecture, decisions, tests, and releases often lose traceability across the lifecycle
- Production feedback rarely flows back cleanly into future decisions and planning

<div class="accent">
The real problem is controlling the full AI-assisted delivery system: value, cost, decisions, validation, and production readiness.
</div>

---

# Why Now

The entire software industry is adjusting to AI-assisted delivery. Automation will emerge across many categories of software development:

- Business research
- Product and requirements work
- Architecture and design
- Coding and code review
- Testing and validation
- Release and operations
- Cost, quality, and governance control

<div class="accent">
We bring 20+ years of experience building scalable and secure SaaS platforms — and see a major opportunity to turn AI momentum into a new software delivery paradigm.
</div>

---

# Constructor Studio Users

Constructor Studio automates the work of **Actors** - anything that performs a transformation in the Software Construction Lifecycle.

Today, that mostly includes humans. Tomorrow, it will also include AI agents and external systems.

Examples - Human, AI Agent, External Tool, External System, Automated Pipeline

---

<!-- _class: text-sm -->

# Constructor Studio Users by Function

Constructor Studio is intended for the following functions and roles:

- **Product Management** (CPO, Director of Product, Product Owner, Product Manager, Program Manager) - Define what should be built
- **Product Marketing** (CMO, Product Marketing Manager, Technical Marketing Manager, Marketing Communications Manager) - Position and launch products
- **User Experience Team** (UX Researcher, UX designer, UI designers, Interaction designer, Design System Engineer) - Design user experience
- **R&D**  (CDO, CTO, Chief Architect, Engineering Manager, Developer, QA, SME, AI Engineer, DevOps) - Design and construct software
- **Operations** (DevOps, DCO, SRE) - Deploy & operate production systems
- **GTM** (CRO, Regional VPs) - Sell and grow the business
- **Customer Success** (Implementation teams, customer support, TAMs) - Support customers and drive customer growth

---

# Product Lifecycle

- Constructor Studio covers the Software Development Lifecycle (SDLC) in a broader way - starting from intent, moving through product construction and operation, and then continuing into learning, evolution, and transformation.
- Constructor does not dictate a specific Software Development Lifecycle (SDLC). On the contrary, it can be easily adapted to any SDLC used by a company and extended into more advanced SDLCs.
- Constructor Studio ships with one or more examples of supported SDLCs that can be used as is or customized to fit a company's needs.

---

# Reference Studio SDLC example

Reference SDLC kit provided by Studio includes 3 high-level phases: **Plan > Build > Operate**, which are in turn split into 14 stages:

  **Intent → Vision → Discovery → Strategy → Definition → Design → Construction → Validation → Release → Operation → Support → Intelligence → Optimization → Evolution**

For every Actor and every Lifecycle Stage, Constructor Studio defines:
  1. Actor
  2. Activities
  3. Inputs
  4. Outputs

---

<!-- _class: table-sm -->

# Lifecycle Model Example

For example:

| Actor | Stage | Activities | Inputs | Outputs |
|---|---|---|---|---|
| Product Manager | Intent | Identify opportunity; Market analysis; Define business goals | Market trends; Customer feedback | Opportunity Statement |
| Product Manager | Discovery | Customer interviews; JTBD; Prioritization | Opportunity Statement | Problem Statements |
| Architect | Architecture | Design system | Requirements | Architecture |
| Developer | Construction | Implement solution | Architecture | Source Code |
| QA | Validation | Execute tests | Source Code | Test Results |
| SRE | Operations | Monitor production | Running System | Operational Metrics |

---

# Tools

Constructor Studio is designed to work with the tools teams already use — and to adapt to how each organization builds software.

Instead of forcing migration, Studio connects to existing systems, mirrors their context into the shadow SDLC graph, and lets teams customize how work is validated, routed, and automated.

This includes:
- Integrations with IDEs, agentic workflows, issue trackers, Git repositories, docs, CI/CD, cloud, and operations systems
- Customizable workflows, templates, validators, policies, and actions
- Team-specific kits, connectors, and automation patterns without vendor lock-in

---
# Initial Customer Segment

## AI-assisted SaaS and service-provider teams

5–500 person engineering teams that:

- Already use AI coding tools and agents
- Have fragmented delivery systems and context
- Build production-grade, multi-tenant SaaS apps & platforms
- Need security, governance, approvals, and auditability
- Prefer open standards and no vendor lock-in

## Buyer

CTO, VP Engineering, Head of Platform, Head of R&D.

---
# Studio Positioning

Studio is **not** the primary system of record.

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
# User Interfaces

Constructor Studio is an **integrated** workspace – bringing together all scenarios in one place.

It is implemented as:
- A **web application** in a browser
- A **desktop application** for macOS, Linux, Windows, iOS/Android
- A **CLI** that can be used from other tools (less beneficial because most existing tools were created for developers and do not serve all other roles as well)

---
# User Experience

- Constructor Studio is designed for all roles involved in software creation.
- Some roles are deeply technical, while others are more business-oriented and less technical.
- The goal is a short learning curve without sacrificing power.
- Users can start with AI-assisted flows and go deeper into manual operations when needed.

---
# Guided, Connected Work

- Natural language and conversational interfaces are becoming mainstream.
- Studio reduces the need to remember complex sequences by suggesting the next Action or Task.
- The output of one activity can become the input to another.
- Multiple outputs from multiple activities can be routed into multiple downstream activities.

---
# Collaboration

For teams working together, Constructor Studio makes it possible to share:

- Guidelines
- Templates
- Processes
- Workflows
- Artifacts

These can be shared by one person across multiple projects, by teams across roles, or across the whole organization.

---
# Collaboration at Team and Organization Level

- Studio allows teams and organizations to define common guardrails and quality gates.
- Shared standards improve consistency, handoffs, and reuse across the lifecycle.
- Individual contributors also benefit through synchronization between Activities, routing outputs into other activities, and reusing artifacts across projects.


---
# Localization

- Constructor Studio can be easily localized into multiple locales. Localization includes not only user interface translation, but also things like currency format, date format, time format, working week start day, and right-to-left support.
- Each user collaborating on a project in Constructor Studio may use it in their own language or locale and still collaborate successfully.


---

# Human-Centric Automation

Studio is designed to **assist and advise people**, not blindly replace them.

<div class="cols">
<div>

**Studio can**

- Detect gaps
- Recommend fixes
- Explain risks
- Prepare actions
- Validate artifacts
- Summarize context
- Automate approved changes

</div>
<div>

**Humans control**

- Product intent
- Strategic direction
- Architecture tradeoffs
- Security exceptions
- Release approvals
- Risk acceptance
- Customer-impacting actions

</div>
</div>

---

# Insight Integration Advantage

Studio integrates with **Insight**, the connector, analytics, and benchmarking layer.

Insight can collect data from hundreds of systems:

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

# SaaS Development Kits

Studio includes predefined kits for serious SaaS development.

Kits package reusable delivery knowledge:

- Reference architecture
- Templates and examples
- Actions and validators
- Rules and policies
- Recommended flows
- Deployment patterns
- Gears building blocks

Kits can be **open-source defaults** or proprietary vendor/team packs — extensible without platform lock-in.

---

# Gears Building Blocks

Gears are reusable OSS/BSS modules, platform engines, and developer/SRE tooling.

<div class="three">
<div class="box"><b>Identity</b><br/>IdP, SSO, tenant identity, user lifecycle</div>
<div class="box"><b>Authorization</b><br/>RBAC, ABAC, granular roles, delegated administration</div>
<div class="box"><b>Events</b><br/>event bus, schemas, routing, audit events</div>
<div class="box"><b>Serverless</b><br/>functions, workflows, safe runtime, connectors</div>
<div class="box"><b>GenAI</b><br/>model gateway, routing, prompts, evaluation</div>
<div class="box"><b>Platform</b><br/>audit, billing, notifications, APIs, integrations</div>
</div>

---

# Higher Segment Than Lovable

Studio targets higher-end customer segments than Lovable, where teams need:

- Production-grade multi-tenant SaaS
- Multi-tier service-provider platforms
- Rich RBAC and ABAC
- Tenant isolation
- Granular roles and delegated administration
- Auditability and governance
- Public cloud, private cloud, and on-prem options
- Integration-heavy delivery automation

<div class="accent">
Studio competes above the prototype segment: scalable, secure, governed SaaS.
</div>

---

# The Most Cost-Efficient Software Development

Studio is designed for AI cost control, not just AI usage.

- Multi-model support
- Context compression
- Quality and cost benchmarking
- Continuous optimization and revalidation
- Telemetry dashboards and analytics

---
# Cost-Efficiency Levers

- **Multi-model support** - route each Activity to the most efficient model for the job
- **Context compression** - reduce token load through summarization, filtering, and pruning
- **Benchmarking** - measure the cost of AI tokens and development compute
- **Optimization** - improve prompts, routing, and revalidation over time
- **Other cost-saving techniques** - prompt/version A/B testing and incremental analysis & revalidation

---
# Cost-Efficiency Controls

- Studio ships with an optimized default configuration.
- Teams can later request updated configurations for model routing and context compression.
- Organizations can centrally control model routing instead of letting every team member choose any model for any task.

<div class="accent">
Goal: lower AI cost per accepted change, not just more AI activity.
</div>

---

# Developer Experience

Studio starts close to developer workflows.

- CLI tools
- IDE plugins
- MCP servers
- Notifications & dashboards
- Review and acceptance assistance

<div class="accent">
No migration first. Read-only analysis first. Recommendations next. Approved write-back after trust is built.
</div>

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

<!-- _class: table-md -->

# Competitor Landscape

| Category | Examples | Main strength | Studio angle |
|---|---|---|---|
| AI app builders | Lovable, Bolt, v0 | Fast prototypes | Higher segment: secure SaaS, no lock-in |
| AI coding tools | Cursor, Claude Code, Windsurf | Developer productivity | Govern across tools, keep user choice |
| Repo platforms | GitHub Copilot, GitLab Duo | Code, PR, DevSecOps | Cross-vendor graph and validation |
| Work systems | Atlassian Rovo | Jira/work-item centered execution | Tool-agnostic open control plane |
| DevOps platforms | GitLab, Harness, GitHub | CI/CD, security, deployment | Improve work across systems |
| Autonomous agents | Devin-like systems | Task execution | Evidence, validators, human control |

---

# Competitive Map

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

# Studio vs Lovable

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

# Studio vs AI Coding Tools

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

# Studio vs DevOps Platforms

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

# Closing

Studio is the **AI control plane for Software Engineering**.

It works with existing tools, not against them.

Its open core gives teams ownership, extensibility, and no vendor lock-in.

It mirrors the SDLC, detects gaps, recommends improvements, and runs validated actions across the lifecycle.

<div class="accent">
Studio helps serious SaaS and service-provider teams build faster — without losing control, security, traceability, or production quality.
</div>

---
<!-- _class: appendix -->
<!-- _header: Appendix A -->
# Appendix A - High-Level Scenarios

---
<!-- _class: appendix -->
<!-- _header: Appendix A -->
# High-Level Scenarios - #1 Intent

Actor: Product Management

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

---
<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Appendix B - Product Mechanics

---
<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Core Ideas

## Shadow objects. Validated actions. Human-controlled automation.

- Studio works with familiar software-delivery artifacts rather than introducing a new system of record.
- It supports a wide range of existing tools, including IDEs, source control systems, CI/CD tools, AI models, and Agent SDKs.
- Studio mirrors work from existing systems, links it into a graph, and applies registered actions to move work forward.

---
<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Core Ideas in Flow

```text
PRD -> Design -> Decomposition -> Agent / Human Work -> Validation -> Release -> Operations
```

Every transition can be:

- Deterministic script
- AI-assisted transformation
- Human task

Every transition can be validated before the next step.

---

<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Shadow SDLC Graph

Studio mirrors SDLC objects, intent, context, and attributes.

<div class="cols">
<div>

**Objects**

- Requirement / PRD / Design / ADR
- Task / Epic / Bug / Decision
- Repo / File / Branch / Commit / PR
- Test / Build / Release / Deployment
- Alert / Incident / Runbook / Postmortem
- Person / Team / Role / Approval

</div>
<div>

**Tracked attributes**

- Source system and external ID
- Owner, team, state, version
- Last sync and change history
- Related objects and dependencies
- Validation status and evidence
- Staleness and risk signals

</div>
</div>

---

<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Actions Are Executable Edges

Output of one Activity may become an input or a decision gate of another activity.
Objects are nodes. Actions are executable edges.

```text
PRD -------- create_design() --------> Design
Design ----- decompose_feature() ----> Tasks
Task ------- implement_code() -------> Pull Request
Bug -------- create_repro_test() ----> Failing Test
PR --------- run_ci() ---------------> Build Result
Release ---- deploy() ---------------> Deployment
Incident --- create_postmortem() ----> Postmortem + Prevention Tasks
```

Studio is not only an analytics layer. It can recommend, prepare, validate, and execute approved actions through connectors.

---

<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Validated Action Graph

Studio combines objects, relationships, actions, validators, policies, and evidence.

```text
Object(s) + Context + Rules
          |
          v
Action / Transformation
          |
          v
Candidate Object(s) + Evidence
          |
          v
Validators
          |
   pass / fail / retry / escalate
```

Studio does not just generate artifacts. It validates whether work is ready to move to the next state.

---

<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Validator Loops

```text
              Candidate artifact
                      |
                      v
                 Validators
                      |
            pass      |      fail
          +-----------+-----------+
          |                       |
          v                       v
      Next task              Fix / retry
                                  |
                            retry < limit?
                            /          \
                         yes            no
                          |              |
                          v              v
                    Candidate       Human escalation
                                    or abort
```

Validator loops create trust, auditability, and bounded automation.

---

<!-- _class: appendix -->
<!-- _header: Appendix B -->
# First Killer Workflow

## Bug report → reproduction → failing test → fix PR

This is the best first demo because success is measurable.

```text
Bug report
  -> validate bug description
  -> find suspected component
  -> deploy test environment
  -> reproduce bug
  -> create failing test
  -> confirm test fails on baseline
  -> implement fix
  -> confirm test passes after fix
  -> run CI
  -> create PR
```

---

<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Second Killer Workflow

## PRD → Design → Tasks → PR validation

```text
PRD in Confluence / Office / Git
      | create_design(PRD, repo, SaaS kit, templates, rules)
      v
Candidate Design
      | validators: coverage, architecture, security, multi-tenancy, RBAC/ABAC
      v
Approved Design
      | decompose_feature(Design, PRD, repo, team capacity)
      v
Candidate Tasks
      | validators: missing requirements, duplicates, ownership, task size
      v
Jira / ADO / Linear tasks
      | validate PRs against design and acceptance criteria
      v
Release-ready implementation
```

---

<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Studio Flow Library

Studio ships with smart predefined flows.

<div class="cols">
<div>

- Gap analysis
- Traceability analysis
- Contradiction detection
- Bloat detection
- Stale artifact detection
- Ownership-gap analysis
- Duplicate-work detection

</div>
<div>

- Architecture-drift detection
- Security-impact analysis
- Test-gap detection
- Release-readiness review
- Incident-to-postmortem automation
- Operations metrics analysis
- AI-cost efficiency analysis

</div>
</div>

---

<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Example: Gap Detection

```text
Requirement R-17 exists
      |
      v
No design section references R-17
      |
      v
No task implements R-17
      |
      v
No test covers R-17
      |
      v
Studio recommends:
- update design
- create task
- add test case
- assign owner
```

---

<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Platform Architecture

```text
┌──────────────────────────────────────────────┐
│                 Studio UI                    │
│ Dashboards | Graph | Recommendations | Flows │
└─────────────────────┬────────────────────────┘
                      │
┌─────────────────────v────────────────────────┐
│            Studio Control Plane              │
│ Shadow Graph | Actions | Validators | SDKs   │
└─────────────────────┬────────────────────────┘
                      │
┌─────────────────────v────────────────────────┐
│   Insight: operational intelligence layer    │
│ Connectors | Data | Analytics | Benchmarking │
└─────────────────────┬────────────────────────┘
                      │
┌─────────────────────v────────────────────────┐
│              Existing Systems                │
│ Jira | Git | CI | Docs | Teams | IDE | Cloud │
└──────────────────────────────────────────────┘
```
