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

Constructor Studio is an AI-native software construction workspace that brings together every role, artifact, and activity across the software construction lifecycle into a single collaborative environment. Along with Constructor Insight and Constructor Gears it is one of the elemnts of Constructor Fabric.

> **VERY IMPORTANT NOTE: Please read @CONSTRUCTOR_FABRIC_VISION.md first!**

Studio helps professional software development teams to safely, affectively and predictively move from **product intent to operating the product**.
It is indetnded for 5–500 person SaaS and service-provider teams adopting AI, but unwilling to lose control, security, traceability, or delivery quality.

Constructor Studio is an **integrated** workspace – bringing together all scenarios in one place.

It is implemented as:
- A web application in a browser
- A desktop application for macOS, Linux, Windows, iOS/Android
- A CLI that can be used from other tools (less beneficial because all the existing tools were created for developers and will not benefit all other roles)

---

# 2. Executive Summary

- **Market shift:** - AI coding agents are making code generation cheaper and faster
- **Skyrocketing costs** - Uncontrollable use of LLMs - whna pplied to old-style SDLC leads to the growth of bills from LLM providers
- **Gravity Shift** - The weight shifts from code generation to intent definition and operations 
- **New bottleneck:** - Validation, coordination, governance, and production readiness
- **Product:** - Studio is an open-core control plane over existing SDLC systems
- **How it works:** - Studio builds a shadow SDLC graph and runs validated actions over it
- **Moat:** - Open core adoption + Insight data + Studio automation + Gears kits + custom AI models and World Model
- **Customer promise:** no migration, no vendor lock-in, own your SDLC graph and workflows

---

# 3. Problem Statement

The problems that Constructor Studio is builto to address:

## 3.1 AI Costs 
The costs associated with AI use are groiwng very fast but the outcomes of this use are not very clear and not undesrtood. The lack of proper company-wide guidelnes and guardrails leads to inefficient uses of AI - wrong models for wrong tasks, multiple passes of the same context to the model, context growth with the ack of context compression, the same tasks executed by multiple team members agains the same or different models. Which AI work creates value vs. cost? Which agents, models, and prompts are efficient?


## 3.2 Developer-centric AI Tools
Modern AI tools were created with the R&D in mind. Other organizations and functions - Product Management, GTM - are having a hard time adopting AI using R&D-centric tools (IDEs - such as Cursor and source control systems like GitHub are not the native Product Management tools for example and they require a very steep learning curve and do not provide convenient and efficient collaboration capabilities).

## 3.3 Lack of Handoff
AI coding tools help teams generate more code faster. But complex software delivery still breaks across handoffs. Artifacts created by one team at one stage of the SDLC are not well received or consistently followed by another team. Whether requirements, architecture, decisions, tests, and releases stay connected?

## 3.4 Lack of Feedback Loop
Majority of the AI tools focus only on a few stages of SDLC - around coding and delivery of the software. Opetationa apsect stays uncovered and the production feedback updates does not affect future decisions.

<div class="accent">
The strategic problem is controlling the full AI-assisted software delivery: value, cost, architecture, decisions, validation, and production readiness.
</div>

---

# 4. Why Now

1. Costs of AI-assisted software developmnent are griowing in 2026
2. While there are many companies that are experimenting and trying to build one or more tools covering a small portion of SDLC - there is no single company that adresses the problems holistically.

---

# 5. The Most Cost-Efficient Software Development

Studio is designed for AI cost control, not just AI usage. This achieved mainly by:
## 5.1 Multi-model support 
It's possible to configure Constructor Studio to always use a model that is most efifient for the specific Activity and for a specific Role:
  - Model routing by Activity type - code generation vs. document consistency check.
  - Small models for classification and extraction
  - Non-GPU models for simple checks
  - Large models only for hard reasoning
  - Own models for repeated enterprise tasks

## 5.2 Context compression

Constructor Studio condences the information fed into AI models by using summarization, sliding window approach, relevance filtering, token trimming/pruning.

## 5.3 Quality/cost benchmarking

Constructor Studio provides the tools to measure and monitor the overall costs of sofwtware development.
  - Cost of Atokens
  - Cost of compute in development - through tight integration with Constructor Insight

## 5.4 Other cost-saving techniques
  - Prompt/version A/B testing
  - Incremental analysis & revalidation

Constructor Studio always provides the most cost-effective software development - while it is shipped with the most optimal configuration available at the moment - it is possible at a later stage while using the Studio to request most up-to date configuration (model routing, context compression) and optionally apply it to the studio instance. 

While some organizations allow their team members freely chose any AI model for any task - Constructor Studio allows centralizaed control over the model routing. Organization administrators may decide to lock the Studio configuration - which models the team members will be using for which Activities.

<div class="accent">
Goal: lower AI cost per accepted change, not just more AI activity.
</div>


---

# 6. Target Customers

## 6.1 AI-assisted SaaS and service-provider teams

While in future Cosntructor Studio may address a much wide audience - it's initial target customers are 5–500 person engineering teams that:

- Already use AI coding tools and agents
- Have fragmented delivery systems and context
- Build production-grade, multi-tenant SaaS apps & platforms
- Need security, governance, approvals, and auditability
- Prefer open standards and no vendor lock-in

## 6.2 Buyer Personas

CTO, Chief Architect, VP Engineering, Head of Platform, Head of R&D.

---
# 7. Constructor Studio Users

## 7.1 Actors

Constructor Studio automaes the work of **Actors** - anything that performs a transformation in the Software Construction Lifecycle. Today that includes mostly humans. Tomorrow it will also include AI agents and external systems. 
For example:
  - Human
  - AI Agent
  - External Tool
  - External System
  - Automated Pipeline

## 7.2 Functions and Roles  

It is intended for the following fucntions and roles:
  - Product Management (CPO, Director of Product, Product Owner, Product Manager, Program Manager) - Define what should be built
  - Product Marketing (CMO, Product Marketing Manager, Technical Marketing Manager, Marketing Communications Manager) - Position and launch products
  - User Experience Team (UX Researcher, UX designer, UI designers, Interaction designer, Design System Engineer) - Design user experience
  - R&D  (CDO, CTO, Chief Architect, Engineering Manager, Developer, AI Engineer) - Design and construct software
  - QA (QA engineers, performance engineers) - Validate quality
  - DevOps /DCO (SRE, DevOps) - Operate production systems
  - GTM (CRO, Regioal VPs) - Sell and grow the business
  - Cusromer Success (Implementation teams, customer support, TAMs) - earn from customers, support customer growth

# 8. Product Lifecycle
- Instead of focusing on Software Developmen Lifecycle (SDLC) - where the focus was only the creation of a software product - Constructor Studio covers a much wider scope in the lifecycle of a sofware product - starting from Intent, transitioning to the constrction of the product ad the to the operation of the product and lerning to the evolution and transofmration of the product. So we will be using the term Software Construction Lifecycle (SCLC).
- Cosntructor does not dictate the specific Software Development Lifecycle (SDLC) - completely opposite - it can be easily adopted to any SDLC used by the company and extend it into a proper SCLC.
- Constructor Studio is shipped with one or more examples of supported SCLCs that can be used as is or can be cusomized to fir the company needs.
- This SCLC inclides 3 high-level phases: **Plan > Build > Operate** which are in turn split into 14 stages: 

  **Intent → Vision → Discovery → Strategy → Definition → Design → Construction → Validation → Release → Operation → Support → Intelligence → Optimization → Evolvution**

- For every Actor and every Lifecycle Stage - Constructor Studio defines:
  1. Actor
  2. Activities
  3. Inputs
  4. Optputs

For example:

```text
Actor             Stage         Activities	         Inputs	              Outputs
Product Manager	Intent	  Identify opportunity,    Market trends	        Opportunity Statement
                                Market analysis,         Customer feedback  
                                Define business goals	
Product Manager	Discovery	  Customer interviews,     Opportunity Statement  Problem Statements
                                JTBD, Prioritization 
Architect	      Architecture  Design system	         Requirements	        Architecture
Developer	      Construction  Implement solution	   Architecture	        Source Code
QA	            Validation	  Execute tests	         Source Code	        Test Results
SRE	            Operations	  Monitor production	   Running System	        Operational Metrics
```


# 8. User Experience

- One of the unique differentiators of Constructor Studio is its excellent User Experience for all Roles participating in the creation of the sofwtare product. Some of these Roles are extremely technacal (like developers or architects) and some - are more business-oriented and less technical (like Product Management and UX Design).
- Constructor Studio provides an ability to perform activities with adjustable level of complexity - one can start with assisted AI-approach but have a possibility to go deeper into manual operations.
- English is becoming a mainstream programming language (as well as many other human-spoken languages) and many modern tools are switching from the old UX paradigm - menus and buttons to a more modern conversational approach - which have their own set of benefits and disdavantages. One of them - you have to remember the sequence of actions which one needs to perform to accomplish the task - even if to invoke the task you can use now plain human language. Constructor Studio provides an intuitive User Experience with a short learning curve - when the next Action or Task is suggested to a User by Studio. 
- Constructor Studio allows to easily feed a result of one activity as an input to another activity. It's possible to feed multiple outputs of multiple activities as an inputs to multiple activities.

---

# 9. Collaboration

For the teams working together - Constructor Studio allows to setup common guidelines, templates, processes, workflows, artifacts to be shared:
- By the same person across multiple projects
- By a team of people playing the same or different Roles
- For the whole organziation
For example: tempaltes of the documents, stages in the process, quality gates - that every team member must follow.

Constructor Studio allows to setup guardrails and quality gates for a team or for a whole organization.


While the most benefits can be achieved when Constructor Studio is used by the team of people - it also provides the benefits for an individual contributor working on multiple projects at the same time - such as synchronisation between Activities, routing outputs of activities as inputs to other activities, re-using artifacts between projects.


---
# 10. Localization

- Constructor Studio can be easily localized into multiple locales. Localization includes not only the user interface translation - but also things like currency format, date format, time format, working week start day, right-to-left.
- Each user collaborating in the project using Constructor Studio may use it in her own language/locale - and successfully collaborate.

---

# 11. Constructor Fabric Elements 

While each of the elemements of Constructor fabric can be used independently - they were designed to enrich each other when are used together.

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

# 12. High-Level Scenarios

## 12.1 Stage: Intent

Actor: Product Management

  - **Identify the opportunity** - Understand what changes in the market, customer behavior, technology, or business creates an opportunity. 
  - **Understand the problem** - Determine which problems are worth solving.
  - **Define target customers** - Decide who the product is for.  
  - **Quantify the value** - Estimate whether solving the problem matters.
  - **Explore solution space** - Evaluate possible approaches without committing.
  - **Define strategic positioning** - Decide why the product should win - identify the "magic sauce" - unique differentiators (special skills, key people, relationships, ecosystem, channel)
  - **Formulate intent** - Convert research into a clear decision - should we do it or not and why

## 12.2 TBD - the rest of the stages

---

# 13. Integrations 

Constructor Studio is **not** the primary system of record.
Construtor Studio does not replace the existing source control systems, AI models - instead it integrates with them.  

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

# 14. Competetive Landscape

## 14.1 Competititor Categories

| Category | Examples | Main strength | Studio angle |
|---|---|---|---|
| AI app builders | Lovable, Bolt, v0 | Fast prototypes | Higher segment: secure SaaS, no lock-in |
| AI coding tools | Cursor, Claude Code, Windsurf | Developer productivity | Govern across tools, keep user choice |
| Repo platforms | GitHub Copilot, GitLab Duo | Code, PR, DevSecOps | Cross-vendor graph and validation |
| Work systems | Atlassian Rovo | Jira/work-item centered execution | Tool-agnostic open control plane |
| DevOps platforms | GitLab, Harness, GitHub | CI/CD, security, deployment | Improve work across systems |
| Autonomous agents | Devin-like systems | Task execution | Evidence, validators, human control |

---

# 14.2 Competitive Map

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

# 14.3 Studio vs Lovable

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

# 14.4 Studio vs AI Coding Tools

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





---

# 15. Core Ideas

## Shadow objects. Validated actions. Human-controlled automation.

- Constructor Studio does not introduce new artifacts - and produces and digests the artifacts that are very familiar in the software industry.
- Constructor Studio does not dictate which other tools a team needs to use - instead it supports a wide variety of the tools - various IDEs, source control systems, CI/CD tools, AI models, Agent SDKs.

Studio mirrors work from existing systems, links it into a graph, and applies registered actions to move work forward.

```text
PRD -> Design -> Decomposition -> Agent / Human Work -> Validation -> Release -> Operations
```

Every transition can be:

- Deterministic script
- AI-assisted transformation
- Human task

Every transition can be validated before the next step.

---

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

Studio targets higher Lovable-customers' segments where teams need:

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
- Fewer rejected AI-generated artficats
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
