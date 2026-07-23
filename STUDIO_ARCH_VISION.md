---
marp: true
theme: rose-pine-moon
paginate: true
size: 16:9
---

# Constructor Studio Architecture

## Agenda

<div class="cols">
<div>

1. Architecture Alignment
2. Key Terms and Runtime Boundaries
3. Operating Model

</div>
<div>

4. Lifecycle Capabilities and Example Flows
5. AI, DevOps/SRE, Reuse, and Ecosystem
6. Closing Synthesis

</div>
</div>

---

<!-- _class: lead -->

# 1. Architecture Alignment

---

# 1.1 Source of Truth

This document follows `STUDIO_VISION.md` and `CONSTRUCTOR_FABRIC_VISION.md`.

- `STUDIO_VISION.md` defines Constructor Studio as the product and workspace
- `CONSTRUCTOR_FABRIC_VISION.md` defines the Fabric lifecycle vocabulary and Constructor Fabric context
- This document describes the architecture that implements that product vision
- Runtime, engine, gateway, kits, and connectors are architectural components of Studio, not competing definitions of Studio

---

# 1.2 What Constructor Studio Is

Constructor Studio is an AI-native integrated software construction workspace.

Architecturally, Studio is implemented through customizable user interfaces, Studio Engine, AI runtime, Studio Kits, and connectors.

- It turns fragmented tools, artifacts, teams, and AI assistants into governed software construction workflows
- It provides shared architecture for lifecycle objects, workflows, content, collaboration, actions, models, and agents
- It does not enforce one process: teams compose flows from Studio Kits and adapt them to their delivery model
- It is built on Constructor Gears and includes a Gears Kit for building SaaS products on the same foundation
- It is integrated with Insight for telemetry, metrics, analytics, and operating feedback

---

# 1.3 Lifecycle Scope

Studio covers the Software Construction Lifecycle using the Fabric lifecycle vocabulary.

```text
Plan -> Build -> Operate
```

At detailed level, Studio can support the full 14-phase lifecycle:

```text
Intent -> Vision -> Discovery -> Strategy -> Definition -> Design -> Construction -> Validation -> Release -> Operation -> Support -> Intelligence -> Optimization -> Evolution
```

Architecture must support entry before PRD, including vision, discovery, strategy, market research, competitive research, and definition.

---

<!-- _class: slide-with-large-embedded-image -->

# 1.4 Architecture Overview
<div class="embedded-image">
  <img src="../assets/img/studio-arch-vision.png" alt="Constructor Studio Arch Vision" />
</div>

---

# 1.5 One-Sentence Architecture

Studio architecture is an extensible workspace runtime for governed automation over Software Construction Lifecycle objects.

```text
People + Tools + Artifacts + AI
        |
        v
Studio Interfaces + Studio Engine + AI Runtime + Studio Kits + Connectors
        |
        v
Validated flows across Plan, Build, and Operate
```

The product is the workspace. The architecture provides the engine, AI runtime, kits, and connectors that let the workspace run many workflows safely.

---

# 1.6 The Three Architecture Layers

- **Studio Interfaces** - Web, desktop, CLI, terminal UI, IDE plugins, mobile client, MCP server, APIs, partner-provided interfaces, and branded experiences
- **Studio Engine** - Tenants and user management, Studio Kits runtime, Gen AI, Core lifecycle objects, base scenarios, collaboration, content management, workflow management, actions, workers, and agent builder
- **Integration Plane** - Pre-built and third-party connectors to lifecycle tools, cloud systems, identity, CI/CD, observability, and enterprise platforms

---

<!-- _class: lead -->

# 2. Key Terms and Runtime Boundaries

---

# 2.1 Key Terms

- **Workspace** - the collaborative product environment where people, AI agents, artifacts, workflows, and governance meet
- **Studio Engine** - the internal runtime that manages lifecycle objects, workflows, actions, state, evidence, and automation modes
- **Studio Kit** - a packaged automation product that adds domain-specific process automation capabilities with help of customizable actions, workflows, durable object types, templates, prompts, validators, policies, dashboards, and connectors
- **Connector** - an integration adapter that reads from or writes to external systems under policy control
- **Object** - a normalized Studio representation of a lifecycle artifact, actor, decision, signal, or system element
- **Object Type** - the schema, lifecycle states, relationships, and rules for a class of objects
- **Workflow** - a controlled sequence of actions, validations, approvals, and write-back steps
- **Action** - a deterministic, AI-assisted, human-driven, or connector-backed operation over one or more objects
- **Worker** - an executable unit that performs an action inside controlled runtime boundaries
- **Agent** - an AI-assisted worker or coordinated set of workers with defined tools, policies, and approval gates
- **Validator** - a check that decides whether an artifact, candidate change, or workflow result satisfies rules
- **Policy** - an organization, tenant, team, project, or workflow rule that constrains what Studio may recommend, execute, or write back
- **Quality Gate** - a required validation or approval checkpoint before a lifecycle state can advance
- **Evidence** - stored proof of inputs, decisions, validation results, approvals, actions, costs, and outcomes
- **Extension** - a Kit-defined addition to an existing Studio object type, workflow, interface, or capability
- **Plugin** - an installable extension that adds interface or executable behavior
- **Model** - an AI or Large Language Model used by the AI Runtime; it does not mean a Studio domain or object model
- **Application** - software constructed using Studio; it is distinct from the Studio workspace and its interfaces

---

# 2.2 Runtime Boundary

Studio sits between existing systems of record and governed lifecycle actions.

- Systems of record remain external: research sources, docs, tickets, repositories, CI/CD, observability, cloud platforms, and support systems
- Studio mirrors selected lifecycle artifacts, signals, and relationships into its governed object model
- Studio executes workflows through controlled actions, workers, agents, AI runtime, and connectors
- Studio records evidence, state changes, validation results, model usage, costs, approvals, and audit events
- Studio can run read-only, recommendation-only, approval-gated, or write-back automation modes

---

# 2.3 Connector and Write-Back Model

Studio integration is connector-based and policy-controlled.

- Connectors ingest external artifacts, events, metadata, and telemetry
- Normalizers map external data into Studio objects and relationships
- Actions operate on Studio objects and produce candidate changes
- Validators and policies decide whether candidate changes can advance
- Write-back adapters update external systems only after the required gates pass

```text
Research / Docs / Jira / ADO / GitHub / GitLab / CI / Cloud / Observability / Support
                                 |
                                 v
                      Studio workspace runtime
```

---

# 2.4 Studio Engine

Studio provides the engine that every **Studio Kit** uses.

<div class="cols">
<div>

**Core engine entities**

- Lifecycle objects
- Object types and relationships
- State transitions
- Events and history
- Policies, validators, and quality gates
- Evidence, audit, and cost records

</div>
<div>

**Base object types**

- Tenants, organizations, teams, users, roles
- Workspaces and projects
- Intent, vision, discovery, strategy, definition
- Designs, code, PRs, commits, releases
- Operations, support, intelligence, optimization, evolution
- Workflows, actions, approvals, notifications, logs, audit

</div>
</div>

---

# 2.5 Studio Engine Capabilities

<div class="cols">
<div>

**Collaboration and content**

- SCLC artifact index
- Notification and collaboration
- Content management
- Editor and preview
- Lifecycle metrics
- Human-in-the-loop decisions

</div>
<div>

**Automation runtime**

- Workflow management
- Actions
- Worker execution
- Agent builder
- Jobs, schedules, and sandboxes
- Runtime isolation and resource controls

</div>
</div>

---

# 2.6 AI Runtime and Model Gateway

Studio has a first-class AI runtime layer rather than treating model calls as hidden implementation detail.

- Model gateway for access to supported AI and Large Language Models
- Multi-model routing by task type and quality/cost target, including local and open models with fallback
- Token budgets and spending limits per user, model, task type, and agent
- Prompt and prefix caching
- Context compression and compaction
- Batching, output caps, and structured output
- Cost observability per user, model, task type, and agent, including overrun alerts

---

# 2.7 Studio Kits Carry the Logic

All process-specific logic comes in Studio Kits.

A Kit can package:

- Domain objects and object extensions
- Templates, prompts, examples, and content models
- Workflows, actions, workers, and validators
- Policies, quality gates, and approval rules
- Connectors and integration mappings
- Dashboards, UI plugins, and agent experiences
- Deployment patterns and infrastructure recipes

The Studio Engine provides the runtime. Kits define how the runtime behaves for a specific delivery domain.

---

# 2.8 Multi-Tenant Product Foundation

Studio is multi-tenant and multi-user by design.

A single Studio instance can serve multiple organizations and teams.

- **Tenant** - isolated commercial, operational, and security boundary
- **Organization** - customer or business unit that owns governance, integrations, users, and policies
- **Team** - group of users and agents executing lifecycle work
- **Workspace** - collaboration boundary for related products, programs, or initiatives
- **Project** - scoped delivery unit inside a workspace
- Users, roles, RBAC, ABAC, and delegated administration
- Tenant isolation, policy boundaries, audit, approvals, evidence, usage tracking, limits, and billing-ready foundations

Studio is ready to be operated as a SaaS product.

---

# 2.9 Infrastructure Agnostic

Studio is infrastructure agnostic.

It can run on different infrastructure models:

- Public cloud (Virtuozzo, GCP, Azure, AWS)
- Private cloud
- On-premises environments (Windows, Linux)

Studio also includes integrated deployment automation so generated applications, workflows, and services can move through governed environments.

```text
Plan -> Build -> Package -> Deploy -> Observe -> Learn -> Feed evidence back into Studio
```

---

# 2.10 Built Using Gears

Studio is built using Constructor Gears, the third element of Constructor Fabric.

Gears provides reusable SaaS building blocks used by Studio itself:

- Identity and tenant management
- Authorization and policy services
- Eventing and audit foundations
- Notifications and collaboration primitives
- Workflow and serverless execution building blocks
- GenAI gateways, routing, and evaluation foundations
- Developer and SRE tooling

---

# 2.11 Studio Comes With a Gears Kit

Studio ships with a Gears Kit.

This lets other vendors build SaaS products on Gears as well.

The Gears Kit can include:

- Reference SaaS architecture
- Multi-tenant application templates
- Identity, RBAC, ABAC, audit, and billing patterns
- Deployment automation
- DevOps and SRE workflows
- Example agents, validators, and dashboards
- Documentation, examples, and CLI workflows

---

<!-- _class: lead -->

# 3. Operating Model

---

# 3.1 Objects, Actions, Validators

Studio models the Software Construction Lifecycle as objects connected by executable actions.

```text
Object(s) + Context + Rules
        |
        v
Action / Worker / Agent
        |
        v
Candidate Object(s) + Evidence
        |
        v
Validators + Policies + Human gates
        |
        v
Approved state change or rework loop
```

This makes automation inspectable, repeatable, and governable.

---

# 3.2 Studio Lifecycle Graph

The Studio Lifecycle Graph is Studio's internal normalized representation of selected external artifacts, relationships, state, evidence, and lifecycle signals. It mirrors systems of record without replacing them.

<div class="cols">
<div>

**Objects**

- Person / Team / Role / Approval
- Workspace / Project / Tenant
- Intent / Vision / Discovery / Strategy / Definition
- Requirement / PRD / Design / ADR
- Task / Epic / Bug / Decision
- Repo / File / Branch / Commit / PR
- Test / Build / Release / Deployment
- SLO / Error Budget / Alert / Incident / Runbook / Postmortem
- Insight / Optimization / Evolution item

</div>
<div>

**Tracked state**

- Owner, team, version, and lifecycle state
- Source system and external ID
- Relationships and dependencies
- Validation status and evidence
- Last sync and change history
- Risk, staleness, and quality signals
- Telemetry, cost, and usage metrics

</div>
</div>

---

# 3.3 Executable Edges Concept

Studio treats actions as executable edges in the graph, for example:

```text
Intent ------ formulate_vision() --------> Vision
Vision ------ run_discovery() ----------> Discovery Findings
Discovery --- define_strategy() --------> Strategy
Strategy ---- define_product() ---------> Definition / PRD
Definition / Requirement - create_design() -> Design
Design ------ decompose_work() ---------> Tasks
Task -------- implement_change() -------> Pull Request
PR ---------- validate_pr() ------------> Review Findings
Bug --------- reproduce_bug() ----------> Failing Test
Release ----- safe_deploy() ------------> Deployment
Incident ---- create_postmortem() ------> Postmortem + Prevention Tasks
```

Each edge can be deterministic, AI-assisted, human-driven, or connector-backed.

---

<!-- _class: lead -->

# 4. Lifecycle Capabilities and Example Flows

---

# 4.1 Default SCLC Flows

Studio ships with default flows through Kits across Plan, Build, and Operate.

<div class="cols">
<div>

**Plan and Build**

- Intent -> Vision -> Discovery -> Strategy -> Definition
- Definition -> Design
- Design -> Decomposition
- Decomposition -> Tasks
- Tasks -> Estimates
- Tasks -> Construction and Validation
- Bugs -> Fixes
- Validation -> Release

</div>
<div>

**Operate and quality assessment**

- Release -> Operation -> Support -> Intelligence -> Optimization -> Evolution
- Content structure
- Content relevance
- Gap analysis
- Contradiction detection
- Bloat detection
- Bug discovery
- AI efficiency analysis

</div>
</div>

---

# 4.2 Workflow Example: Plan Before PRD

```text
Market signal / customer problem / investment thesis
      | formulate_vision(research sources, Studio Kit, examples, policies)
      v
Candidate Vision
      | validators: market evidence, target customer, value proposition, strategic fit
      v
Approved Vision
      | run_discovery(Vision, interviews, competitive research, telemetry, constraints)
      v
Discovery Findings
      | validators: source quality, contradictions, problem clarity, evidence coverage
      v
Strategy and Definition candidates
```

---

# 4.3 Workflow Example: Definition to Tasks

```text
Definition / PRD in Confluence / Office / Git
      | create_design(Definition, repo, SaaS Kit, templates, rules)
      v
Candidate Design
      | validators: coverage, architecture, security, multi-tenancy, RBAC/ABAC
      v
Approved Design
      | decompose_work(Design, Definition, repo, team capacity)
      v
Candidate Tasks
      | validators: missing requirements, duplicates, ownership, task size
      v
Jira / ADO / Linear tasks
```

---

# 4.4 Workflow Example: Gap Analysis

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
- create task and test cases
- assign owner
```

---

# 4.5 Workflow Example: Bug Report to Fix PR

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

This flow is a strong first demo because success is measurable.

---

# 4.6 Example: Research Flow

```text
Research question
  -> collect sources
  -> extract claims
  -> score source quality
  -> identify contradictions
  -> synthesize findings
  -> create brief
  -> request human review
  -> publish approved report
```

The same runtime works because the pattern is the same: objects, actions, validators, evidence, humans, and integrations.

---

# 4.7 Workflow Example: DevOps/SRE Safe Deployment

```text
Release candidate
  -> verify SLOs and error budgets
  -> validate deployment topology, regions, failover, DR, and RTO/RPO assumptions
  -> check golden-path compliance, SBOM, secrets, network policy, and CI/CD gates
  -> prepare canary or blue-green rollout
  -> deploy with automated rollback triggers tied to SLO burn and health signals
  -> update DORA, reliability, cost, and deployment evidence dashboards
  -> feed incidents, postmortems, and production drift back into Definition, Design, and Optimization
```

---

# 4.8 Example Journeys

```text
1. Intent -> Vision -> Discovery -> Strategy -> Definition
2. Definition -> ADR -> Design -> Decomposition -> Tasks -> Code -> PR -> Release
3. PR -> Retrieve design context -> Validate -> Fix findings -> Revalidate -> Ready for review
4. Codebase -> Reverse engineer -> Reconstructed design -> Gap validation
5. Changed object -> Traceability analysis -> Staleness detection -> Recommendations
6. Release candidate -> Impact analysis -> Coverage validation -> Approval -> Release decision
7. Approved release -> SLO validation -> Canary / blue-green -> Rollback or promote -> Evidence
8. Incident -> Root-cause analysis -> Postmortem -> Prevention tasks -> Optimization
9. Bug report -> Reproduction -> Failing test -> Fix PR
10. Research question -> Sources -> Synthesis -> Review -> Published brief
11. Vendor SaaS idea -> Gears Kit -> Generated service -> Deployment automation
```

---

<!-- _class: lead -->

# 5. AI, DevOps/SRE, Reuse, and Ecosystem

---

# 5.1 DevOps/SRE Architecture Capabilities

Studio treats DevOps/SRE as lifecycle automation, not only infrastructure plumbing.

- SLO and error-budget definition from product definition and non-functional requirements
- Deployment topology planning for environments, regions, failover, DR, RTO, and RPO
- Golden paths through approved templates, platform self-service, and policy-backed defaults
- CI/CD guardrails for reliability, security, compliance, and release readiness
- Safe deployments through canary, blue-green, and automated rollback
- Reliability dashboards for SLO burn, error budgets, and DORA
- Incident-to-architecture feedback loop from alerts, postmortems, telemetry, and support signals

---

# 5.2 Studio Kit Types

<div class="cols">
<div>

**Default Kits**

- SaaS development
- Mobile development
- Web development
- Bug-to-fix
- Requirements-to-tasks
- PR validation
- Release readiness

</div>
<div>

**Custom Kits**

- Enterprise delivery methodology
- Vendor SaaS templates
- Regulated industry workflows
- Research workflows
- Support and operations flows
- Partner certification flows
- Internal platform engineering flows

</div>
</div>

---

# 5.3 What a Kit Contains

A Studio Kit is a packaged automation product.

- Object model extensions
- Templates and examples
- Prompts and agent instructions
- Actions and workers
- Workflows and schedules
- Policies and approvals
- Connectors
- UI plugins and dashboards
- Deployment automation

Kits are how Studio scales from one product to many domains.

---

# 5.4 Gears Kit for SaaS Vendors

The Gears Kit turns Studio into a SaaS factory for vendors.

```text
SaaS product intent
      |
      v
Gears Kit templates, objects, workflows, validators, deployment automation
      |
      v
Generated SaaS services, UI, integrations, operations, and governance
```

Vendors can use Studio to build products on Gears, while Studio itself remains an example of the same architecture.

---

# 5.5 Developer Experience

Studio starts where developers and delivery teams already work.

- Web UI for product, architecture, and operations flows
- IDE plugins for code-time assistance
- CLI and terminal UI for local workflows
- MCP server for AI tools
- Notifications and dashboards for collaboration
- APIs and connectors for enterprise automation

The experience is adoption-first: read, recommend, validate, then automate.

---

<!-- _class: body-sm -->

# 6. Closing Synthesis

- Studio is an AI-native integrated software construction workspace
- The architecture implements Studio through interfaces, Studio Engine, AI runtime, Studio Kits, and connectors
- Studio supports the Fabric Plan / Build / Operate framing and the 14-phase Software Construction Lifecycle
- Studio starts before PRD with Intent, Vision, Discovery, Strategy, and Definition
- The AI Runtime and Model Gateway provide routing, token budgets, caching, context compression, and cost observability
- DevOps/SRE capabilities include SLOs, error budgets, golden paths, safe deployments, reliability dashboards, and incident feedback loops
- Studio Kits carry process logic and allow teams to compose their own way of working
- Studio ships with default Kits for SaaS, mobile, and web development but does not enforce one process
- Studio is multi-tenant, multi-user, infrastructure agnostic, SaaS-ready, built on Gears, and integrated with Insight
