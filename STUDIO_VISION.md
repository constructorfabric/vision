---
marp: true
theme: rose-pine-moon
paginate: true
size: 16:9
---

<!--
Investor-first Studio vision deck.
Source basis: user's Marp draft, refined for investor narrative, wedge, moat, ROI, and competitive positioning.
-->

# Constructor Studio Vision

## Agenda

<div class="cols">
<div>

1. Product Definition
2. Market Problem and Timing
3. Economic Value
4. Customers and Adoption Model
5. Product Experience and Collaboration

</div>
<div>

6. Ecosystem and Competition
7. Business, Moat, and Execution
8. Executive Summary
9. Appendix A - High-Level Scenarios
10. Appendix B - Studio Architecture Vision

</div>
</div>

---

<!-- _class: lead -->

# 1. Product Definition

---

# 1.1 What is Constructor Studio

Constructor Studio is an AI-native software construction automation system.

It brings together every role, artifact, and activity across the software construction lifecycle into a single collaborative environment.

> **VERY IMPORTANT NOTE: Please read @CONSTRUCTOR_FABRIC_VISION.md first!**

---

# 1.2 Studio in Constructor Fabric

Along with Constructor Insight and Constructor Gears, Studio is one of the elements of Constructor Fabric.

- **Studio** - workspace for AI-native software construction
- **Insight** - measurement, analytics, and feedback foundation
- **Gears** - reusable SaaS building blocks and platform foundation

Studio helps professional software development teams safely, effectively, and predictably move from **product intent to operating the product**.

---

# 1.3 Who Studio Is For

Studio is intended for 5–500 person SaaS and service-provider teams adopting AI, but unwilling to lose control, security, traceability, or delivery quality.

Constructor Studio is an **integrated** workspace that brings together:

- Product intent
- Software construction
- Governance
- Operating feedback

---

# 1.4 What Studio Covers

Constructor Studio works across the full Software Development Lifecycle (SDLC) from a business and operating-model perspective.

---

## 1.5 Idea → Specs

- Standardized transformation of business ideas into structured engineering specifications
- Legacy code-to-spec generation – ingest large repositories of legacy code, generate full and consistent spec set
- BRD, PRD, ADR, DESIGN, DECOMPOSITION, and FEATURE frameworks (based on best industry practices and aligned with ISO 29148)
- Spec consistency checks (old specs vs new specs)
- AI-assisted generation, refinement, and reconstruction of missing specifications and architecture artifacts
- End-to-end provenance, governance, and traceability established before implementation begins

---

## 1.6 Specs → Code

- AI-native transformation of specifications into implementation, tests, and workflows
- Incremental decomposition and controlled generation across the SDLC lifecycle
- Full traceability between requirements, architecture, implementation, validation, and code comments
- Supports existing brownfield systems through reverse engineering and AI-assisted reconstruction

---

## 1.7 Code → Production

- Continuous validation between specifications, architecture, code, tests, and delivery artifacts
- Integrated governance, consistency analysis, and development-time validation workflows
- Cross-repository traceability and enterprise-scale consistency management
- Enables modernization, operational control, and predictable AI-assisted software delivery
- Traceability from production back to code and back to spec for continuous code optimization
- AI agent cost control  - spend caps, cross-provider routing, policies and audit

---

<!-- _class: lead -->

# 2. Market Problem and Timing

---

# 2.1. Problem Statement

The problems that Constructor Studio is built to address:

## 2.1.1 AI Costs

The costs associated with AI use are growing very fast, but the outcomes of this use are not very clear and are not well understood. The lack of proper company-wide guidelines and guardrails leads to inefficient use of AI - wrong models for the wrong tasks, multiple passes of the same context to the model, context growth with the lack of context compression, and the same tasks executed by multiple team members against the same or different models. Which AI work creates value vs. cost? Which agents, models, and prompts are efficient?

---

## 2.1.2 Developer-centric AI Tools

Modern AI tools were created with R&D in mind. Other organizations and functions - such as Product Management and GTM - are having a hard time adopting AI using R&D-centric tools (IDEs such as Cursor and source control systems like GitHub are not native Product Management tools, for example, and they require a very steep learning curve and do not provide convenient and efficient collaboration capabilities).

---

## 2.1.3 Lack of Handoff

AI coding tools help teams generate more code faster. But complex software delivery still breaks across handoffs. Artifacts created by one team at one stage of the SDLC are not always well received or consistently followed by another team. Do requirements, architecture, decisions, tests, and releases stay connected?

---

## 2.1.4 Lack of Feedback Loop

Most AI tools focus only on a few stages of the SDLC - around coding and software delivery. The operational aspect stays uncovered, and production feedback does not affect future decisions.

<div class="accent">
The strategic problem is controlling the full AI-assisted software delivery: value, cost, architecture, decisions, validation, and production readiness.
</div>

---

# 2.2 Constructor Studio Differentiators

Although Constructor Studio is not the first and not the only AI-assisted software development framework/toolset, it has a unique combination of differentiators:
1. End-to-end software development cost optimization - including operational costs in production
2. Support for large engineering organizations
3. Ability to adapt to any Software Development Lifecycle (SDLC)
4. Model-agnostic - not tied to a specific LLM and able to support different LLMs for different tasks and activities
5. Integration with existing tools

---

# 2.3 Why Now

1. Costs of AI-assisted software development are growing in 2026
2. While there are many companies that are experimenting and trying to build one or more tools covering a small portion of the SDLC, there is no single company that addresses the problems holistically.

---

<!-- _class: lead -->

# 3. Economic Value

---

# 3.1. The Most Cost-Efficient Software Development

Studio is designed for AI cost control, not just AI usage. This is achieved mainly by:

## 3.1.1 Multi-model support

It's possible to configure Constructor Studio to always use the model that is most efficient for a specific Activity and a specific Role:
  - Model routing by Activity type - code generation vs. document consistency check.
  - Small models for classification and extraction
  - Non-GPU models for simple checks
  - Large models only for hard reasoning
  - Own models for repeated enterprise tasks

---

## 3.1.2 Context compression

Constructor Studio condenses the information fed into AI models by using summarization, a sliding-window approach, relevance filtering, and token trimming/pruning.

---

## 3.1.3 Quality/cost benchmarking

Constructor Studio provides the tools to measure and monitor the overall costs of software development.
  - Cost of AI tokens
  - Cost of compute in development - through tight integration with Constructor Insight

---

## 3.1.4 Other cost-saving techniques
  - Prompt/version A/B testing
  - Incremental analysis & revalidation

Constructor Studio always provides the most cost-effective software development - while it is shipped with the most optimal configuration available at the moment, it is possible later, while using Studio, to request the most up-to-date configuration (model routing, context compression) and optionally apply it to the Studio instance.

While some organizations allow their team members to freely choose any AI model for any task, Constructor Studio allows centralized control over model routing. Organization administrators may decide to lock the Studio configuration - defining which models team members will use for which Activities.

<div class="accent">
Goal: lower AI cost per accepted change, not just more AI activity.
</div>

---

## 3.1.5 ROI Metrics

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

<!-- _class: lead -->

# 4. Customers and Adoption Model

---

# 4.1. Target Customers

While in the future Constructor Studio may address a much wider audience, its initial target customers are engineering teams of 5+ people that:

- Already use AI coding tools and agents
- Have fragmented delivery systems and context
- Build production-grade, multi-tenant SaaS apps & platforms
- Need security, governance, approvals, and auditability
- Prefer open standards and no vendor lock-in

---

## 4.2 Buyer Personas

- **Product Management**: CPO, Director of Product Management, Product Manager
- **R&D**: CTO, Chief Architect, VP Engineering, Head of Platform, Head of R&D
- **Marketing**: CMO, Product Marketing Manager, Technical Marketing Manager, Marketing Operations
- **Research**: Head of Research, UX Researcher, Market Researcher, Competitive Intelligence Analyst
- **Operations**: COO, Head of Delivery, Program Management, Portfolio Management
- **Customer-facing teams**: Customer Success, Professional Services, TAMs, Support Leadership
- **Enterprise platform owners**: CIO, CDO, Head of Enterprise Architecture, Head of Developer Platform

---

## 4.3 Constructor Studio Users & Actors

Constructor Studio automates the work of **Actors** - anything that performs a transformation in the Software Construction Lifecycle. Today that includes mostly humans. Tomorrow it will also include AI agents and external systems.
For example:
  - Human
  - AI Agent
  - External Tool
  - External System
  - Automated Pipeline

Each **Actor** may play one or multiple **Roles**.

---

## 4.4 Managed Functions and Roles

Studio is intended for the following functions and roles:
  - **Product Management** - Define what should be built
  - **Product Marketing** - Position and launch products
  - **User Experience Team** - Design user experience
  - **R&D** - Design and construct software
  - **QA** - Validate quality
  - **DevOps /DCO** - Operate production systems
  - **GTM** - Sell and grow the business
  - **Customer Success** - Implementation teams, customer support, TAMs

---

# 4.5. Managed Product Lifecycle

Constructor Studio expands the business scope from SDLC to Software Construction Lifecycle (SCLC).

- **Plan** - clarify intent, market need, strategy, scope, and success criteria
- **Build** - turn intent into specifications, architecture, implementation, validation, and release readiness
- **Operate** - connect production, support, customer feedback, and product intelligence back to future decisions

The business promise is not a mandated process. The promise is continuity from intent to operation, so teams can preserve context, ownership, quality, and feedback across the full product lifecycle.

---

## 4.6 End-to-End Lifecycle Continuity

At a more detailed level, Studio can support the full lifecycle chain:

```text
Intent → Vision → Discovery → Strategy → Definition → Design → Construction → Validation → Release → Operation → Support → Intelligence → Optimization → Evolution
```

Studio preserves continuity by mapping roles, activities, inputs, outputs, quality gates, and synchronization checkpoints across the lifecycle.

---

# 4.7. Defaults Without Lock-In

Constructor Studio does not enforce one process.

- Teams can start from default flows for SaaS, mobile, and web development
- Common templates can cover bug-to-fix, requirements-to-tasks, PR validation, and release readiness
- Organizations can adapt, replace, or extend defaults to match their own operating model
- Customers keep their tools, terminology, governance model, and preferred delivery style

The business value is faster adoption without forcing a methodology migration.

---

# 4.8. Beyond SDLC

Studio is not limited to software delivery. The same operating model can support a broader class of high-value knowledge workflows where control, traceability, and human collaboration matter.

Examples:

- Research workflows
- Market analysis
- Customer training and onboarding
- Incident response
- Knowledge-base maintenance

---

<!-- _class: lead -->

# 5. Product Experience and Collaboration

---

# 5.1. Human-Centric Automation

Studio is designed to keep people in control of AI-assisted delivery.

<div class="cols">
<div>

**Studio can**

- Prepare artifacts
- Trigger workflows
- Run validations
- Detect gaps
- Notify humans
- Recommend fixes
- Automate approved changes

</div>
<div>

**Humans control**

- Product intent
- Architecture tradeoffs
- Security exceptions
- Release approvals
- Risk acceptance
- Customer-impacting actions
- Process ownership

</div>
</div>

---

# 5.2. Progressive Adoption

Studio adoption can start small and grow with trust.

```text
Read-only visibility
      -> recommendations
      -> approved automation
      -> governed write-back
      -> cross-team automation fabric
```

No big migration is required.

- Keep existing systems of record
- Start with analysis and validation
- Add automation where trust is established
- Expand across teams, workflows, and functions

---

# 5.3. User Experience

Excellent User Experience is one of Constructor Studio's differentiators.

Constructor Studio is designed for all roles participating in software construction:

- Highly technical roles such as developers and architects
- Business-oriented roles such as Product Management, Marketing, UX, Customer Success
- Researchers, analysts, and operations teams

The experience must support both guided AI-assisted work and deeper expert workflows.

---

## 5.4. Adjustable Complexity

Constructor Studio provides activities with an adjustable level of complexity.

- Users can start with an AI-assisted approach
- Experts can go deeper into manual operations, review, and configuration
- The same workflow can serve business, technical, and operational roles
- Complexity can grow with the user's skill, responsibility, and risk level

---

## 5.5. Guided Interaction

Human language is becoming a mainstream interface for software construction.

Studio complements conversational interaction with a guided UX:

- The next useful action or task is suggested by Studio
- Users do not need to memorize long command sequences
- Teams can move between conversational, form-based, review, and dashboard experiences
- The short learning curve matters for non-developer adoption

---

## 5.6. Activity Chaining

Constructor Studio allows the result of one activity to become input to another activity.

- Outputs can flow into follow-up activities
- Multiple outputs can be combined into downstream work
- Work can move across roles without losing context
- Studio supports end-to-end work composition, not isolated one-off prompts

---

## 5.7. Collaboration

Constructor Studio helps teams share a common operating model without forcing everyone into one rigid process.

<div class="cols">
<div>

**Shared operating assets**

- Guidelines
- Templates
- Processes
- Workflows
- Artifacts
- Quality gates
- Guardrails

</div>
<div>

**Standard collaboration techniques**

- Comments and threaded discussions
- Reviews and review workflows
- Approvals and sign-off checkpoints
- Notifications and alerts
- Dashboards and shared visibility
- Assignments, routing, and handoffs
- Shared evidence and audit trails

</div>
</div>

---

## 5.8. Team and Organization Reuse

Shared assets can be reused at different scopes:

- By the same person across multiple projects
- By a team of people playing the same or different roles
- Across the whole organization
- Across customer or vendor delivery programs

Examples include document templates, lifecycle stages, review rules, quality gates, and approval patterns.

---

## 5.9. Individual and Cross-Team Benefits

The greatest benefits come from team adoption, but individual contributors also benefit.

Studio helps synchronize work across projects by:

- Routing outputs of one activity into another activity
- Reusing artifacts between projects
- Keeping related work visible across roles
- Reducing duplicated work across teams
- Making handoffs more explicit and reviewable

---

## 5.10. Localization

- Constructor Studio can be easily localized into multiple locales. Localization includes not only user interface translation - but also things like currency format, date format, time format, working week start day, and right-to-left support.
- Each user collaborating on a project using Constructor Studio may use their own language/locale - and still collaborate successfully.

---

<!-- _class: lead -->

# 6. Ecosystem and Competition

---

# 6.1. Ecosystem Position

Constructor Studio is not positioned as a replacement for the tools teams already use.

From a business perspective, this matters because adoption can start without a disruptive migration:

- Customers keep existing systems of record
- Teams keep preferred IDEs, repositories, work trackers, and AI tools
- Studio adds governance, collaboration, visibility, and validated automation across them
- Open-core positioning reduces lock-in concerns for enterprise buyers

---

<!-- _class: table-md -->

# 6.2 Competitor Categories

| Category | Examples | Main strength | Studio angle |
|---|---|---|---|
| AI app builders | Lovable, Bolt, v0 | Fast prototypes | Higher segment: secure SaaS, no lock-in |
| AI coding tools | Cursor, Claude Code, Windsurf | Developer productivity | Govern across tools, keep user choice |
| Repo platforms | GitHub Copilot, GitLab Duo | Code, PR, DevSecOps | Business continuity across vendors |
| Work systems | Atlassian Rovo | Jira/work-item centered execution | Vendor-neutral operating layer |
| DevOps platforms | GitLab, Harness, GitHub | CI/CD, security, deployment | Improve delivery outcomes across systems |
| Autonomous agents | Devin-like systems | Task execution | Trust, reviewability, and human control |

---

# 6.3 Competitive Map

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

# 6.4 Studio vs Lovable

Studio targets higher-scale customer segments:

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
| End-to-end traceability | Limited | Core value |
| Governance and validation | Basic | Core value |

**Studio competes above prototypes: production SaaS, extensible core, no lock-in.**

---

<!-- _class: table-md -->

# 6.5 Studio vs AI Coding Tools

| Dimension | Cursor / Windsurf / Claude Code | Studio |
|---|---|---|
| Developer coding | Strong | Integrated |
| Local context | Strong | Strong via plugins |
| Cross-tool visibility | Limited | Core |
| Product-to-code continuity | Partial | Core |
| Validation governance | Partial | Core |
| Management visibility | Limited | Core |
| Governance | Limited | Core |
| Cross-system actionability | Limited | Core |
| Extensible operating model | Limited | Open core |

Studio should integrate with these tools, not replace them — users keep their IDE and model choices.

---

<!-- _class: table-md -->

# 6.6 Studio vs DevOps Platforms

| Dimension | GitHub / GitLab / Harness | Studio |
|---|---|---|
| CI/CD | Strong | Integrates |
| Repo / PR workflows | Strong | Integrates |
| Product and design context | Partial | Strong |
| Cross-vendor visibility | Limited | Core |
| SaaS delivery acceleration | Limited | Core |
| AI cost routing | Partial | Core |
| Shared delivery context | Limited | Core |
| Human-centered recommendations | Partial | Core |
| Vendor lock-in | High ecosystem pull | Avoided by open core |

Studio does not need to beat them at CI/CD. Studio improves work across them while reducing ecosystem lock-in.

---

<!-- _class: lead -->

# 7. Business, Moat, and Execution

---

# 7.1. Business Model

Open-core model:

- Open-core foundation for trust, extensibility, and reduced lock-in
- SaaS subscription per active R&D user
- Platform fee for team/company workspace
- Enterprise/private deployment premium
- Enterprise packs for integrations, governance, benchmarks, and customer-specific rollout
- AI usage optimization or usage margin
- Professional services for proprietary kits and workflow rollout

Expansion path:

```text
Read-only insights -> recommendations -> approved automation -> complete control plane
```

---

# 7.2. Moat Flywheel

```text
Open-source core adoption
   -> more teams using Studio
   -> more customer evidence about what creates value
   -> better recommendations and benchmarks
   -> higher trust in approved automation
   -> stronger enterprise pull
   -> broader ecosystem participation
```

<div class="accent">
The moat is not one model or one agent. It is open-core distribution plus validated workflows, reusable kits, accumulated customer evidence, benchmarks, ecosystem reach, and enterprise trust.
</div>

---

# 7.3. Credible Wedge

#### Phase 1: Studio CLI PoC

- Repo-local CLI setup and IDE agent integration
- Investor demo flow: PRD → design → decomposition → FEATURE → implementation evidence
- Visible checks for artifact completeness, traceability, language, and links
- Business-visible map across documents, code, tests, and reviews

#### Phase 2: Validated actions

- Gap analysis
- Contradiction detection
- Autonomous bug-fixing
- PR validation

---

# 7.4. Expansion Roadmap

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

# 7.5. Key Investor Objections

## “This is too broad.”

Start with one wedge: validated workflows over existing tools for AI-assisted SaaS teams.

## “GitHub, GitLab, Atlassian will build this.”

They optimize their own ecosystems. Studio is open-core, cross-vendor, and integrates with Insight and Gears to complete development automation.

## “How do you prove ROI?”

Measure accepted PR rate, AI cost per accepted change, PRD-to-task cycle time, test coverage, release-readiness time, and review time saved.

---

<!-- _class: body-sm -->

# 8. Executive Summary

- **Market shift** - AI coding agents are making code generation cheaper and faster
- **Skyrocketing costs** - Uncontrollable use of LLMs - when applied to an old-style SDLC - leads to growing bills from LLM providers
- **Gravity shift** - The weight shifts from code generation to intent definition and operations
- **New bottleneck** - Validation, coordination, governance, and production readiness
- **Product** - Studio is an open-core workspace for governing AI-native software construction
- **How it works** - Studio connects product intent, delivery artifacts, validation, and operational feedback
- **Moat** - Open-core adoption + Insight data + Studio operating evidence + Gears ecosystem + custom AI models and World Model
- **Customer promise** - no migration, no vendor lock-in, preserve control over delivery context and operating model

---
<!-- _class: appendix -->
<!-- _header: Appendix A -->
# Appendix A - High-Level Scenarios

## High-Level Scenarios - #1 Intent

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

---

<!-- _class: appendix -->
<!-- _header: Appendix B -->
# Appendix B - Studio Architecture Vision

See `STUDIO_ARCH_VISION.md`
