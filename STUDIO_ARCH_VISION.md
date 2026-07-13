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

1. Architecture Definition
2. Core Runtime and Boundaries
3. Operating Model

</div>
<div>

4. Capabilities and Example Flows
5. Reuse, Platform, and Ecosystem
6. Closing Synthesis

</div>
</div>

---

<!-- _class: lead -->

# 1. Architecture Definition

---

# 1.1 What Constructor Studio Is

Studio is a runtime and automation engine for your SDLC flows.

- It turns fragmented tools, artifacts, teams, and AI assistants into governed delivery automation
- It provides a shared engine for domain objects, workflows, content, collaboration, actions, and agents
- It does not enforce one process: teams compose flows from Studio Kits and adapt them to their delivery model
- It is built on Constructor Gears and ships with a Gears Kit for building SaaS products on the same foundation
- It is integrated with Insight for advanced metrics collection and analytics

---

<!-- _class: slide-with-large-embedded-image -->

# 1.2 Architecture Overview

<div class="embedded-image">
  <img src="../assets/img/studio-arch-vision.png" alt="Constructor Studio Arch Vision" />
</div>

---

# 1.3 One-Sentence Architecture

Studio is an extensible runtime for governed automation over software delivery objects.

```text
People + Tools + Artifacts + AI
        |
        v
Studio Engine + Studio Kits + Connectors
        |
        v
Validated flows across planning, design, coding, testing, release, and operations
```

The core product is not a fixed workflow. The core product is the engine that runs many workflows safely.

---

# 1.4 The Four Architecture Layers

- **Studio Interfaces** - Web, desktop, CLI, terminal UI, IDE plugins, mobile client, MCP server, APIs, partner apps, and branded experiences
- **Studio Engine** - Core domain objects, base scenarios, collaboration, content management, workflow management, actions, workers, and agent builder
- **Studio Kits Runtime** - Kit-defined workflows, validators, policies, prompts, templates, agents, dashboards, and domain-specific logic
- **Integration Plane** - Pre-built and third-party connectors to SDLC tools, cloud systems, identity, CI/CD, observability, and enterprise platforms

---

<!-- _class: lead -->

# 2. Core Runtime and Boundaries

---

# 2.1 Runtime Boundary

Studio sits between existing systems of record and automated delivery actions.

- Systems of record remain external: docs, tickets, repositories, CI/CD, observability, chat, and cloud platforms
- Studio mirrors selected artifacts into its own governed object model
- Studio executes workflows through controlled actions, workers, agents, and connectors
- Studio records evidence, state changes, validation results, and audit events
- Studio can run read-only, recommendation-only, approval-gated, or write-back automation modes

---

# 2.2 Connector and Write-Back Model

Studio integration is connector-based and policy-controlled.

- Connectors ingest external artifacts, events, metadata, and telemetry
- Normalizers map external data into Studio objects and relationships
- Actions operate on Studio objects and produce candidate changes
- Validators and policies decide whether candidate changes can advance
- Write-back adapters update external systems only after the required gates pass

```text
Confluence / Office / Jira / ADO / GitHub / GitLab / CI / Cloud / Observability
                                 |
                                 v
                 Studio runtime and automation engine
```

---

# 2.3 Studio Engine

Studio provides the engine that every **Studio Kit** uses.

<div class="cols">
<div>

**Core engine entities**

- Core domain objects
- Object relationships
- State transitions
- Events and history
- Policies and validation status

</div>
<div>

**Base object types**

- Projects and workspaces
- Org chart, teams, users, roles
- Docs, code, PRs, commits
- Workflows, actions, approvals
- Notifications, logs, audit

</div>
</div>

---

# 2.4 Studio Engine Capabilities

<div class="cols">
<div>

**Collaboration and content**

- SDLC artifacts index
- Notification and collaboration
- Content management
- Editor and preview
- Artifact metrics
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

# 2.5 Studio Kits Carry the Logic

All process-specific logic comes in Studio Kits.

A Kit can package:

- Domain objects and object extensions
- Templates, prompts, examples, and content models
- Workflows, actions, workers, and validators
- Policies, quality gates, and approval rules
- Connectors and integration mappings
- Dashboards, UI plugins, and agent experiences
- Deployment patterns and infrastructure recipes

The platform provides the runtime. Kits define how the runtime behaves for a specific delivery domain.

---

# 2.6 Multi-Tenant Product Foundation

Studio is multi-tenant and multi-user by design.

A single Studio instance can serve multiple organizations and teams.

- Tenants and organizations
- Teams, projects, and workspaces
- Users, roles, RBAC, ABAC, and delegated administration
- Tenant isolation and policy boundaries
- Audit, approvals, and evidence
- Usage tracking, limits, and billing-ready foundations

Studio is ready to be operated as a SaaS product.

---

# 2.7 Infrastructure Agnostic

Studio is infrastructure agnostic.

It can run on different infrastructure models:

- Public cloud (Virtuozzo, GCP, Azure, AWS)
- Private cloud
- On-premises environments (Windows, Linux)

Studio also includes integrated deployment automation so generated apps, workflows, and services can move through governed environments.

```text
Build -> Package -> Deploy -> Observe -> Feed telemetry back into Studio
```

---

# 2.8 Built Using Gears

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

# 2.9 Studio Comes With a Gears Kit

Studio ships with a Gears Kit.

This lets other vendors build SaaS products on Gears as well.

The Gears Kit can include:

- Reference SaaS architecture
- Multi-tenant app templates
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

Studio models delivery as objects connected by executable actions.

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

# 3.2 Shadow SDLC Graph

Studio mirrors SDLC delivery artifacts and their relationships.

<div class="cols">
<div>

**Objects**

- Person / Team / Role / Approval
- Workspace / Project / Tenant
- Requirement / PRD / Design / ADR
- Task / Epic / Bug / Decision
- Repo / File / Branch / Commit / PR
- Test / Build / Release / Deployment
- Alert / Incident / Runbook / Postmortem

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
Intent ------ clarify_requirement() ----> Requirement
Requirement - create_design() ----------> Design
Design ------ decompose_work() ---------> Tasks
Task -------- implement_change() -------> Pull Request
PR ---------- validate_pr() ------------> Review Findings
Bug --------- reproduce_bug() ----------> Failing Test
Release ----- deploy() -----------------> Deployment
Incident ---- create_postmortem() ------> Postmortem + Prevention Tasks
```

Each edge can be deterministic, AI-assisted, human-driven, or connector-backed.

---

<!-- _class: lead -->

# 4. Capabilities and Example Flows

---

# 4.1 Default SDLC Flows

Studio ships with default flows through Kits.

<div class="cols">
<div>

**Generation**

- Intent -> Requirement
- Requirement -> Design
- Design -> Decomposition
- Decomposition -> Tasks
- Tasks -> Estimates
- Tasks -> Code and tests
- Bugs -> Fixes

</div>
<div>

**Quality assessment**

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

# 4.2 Workflow Example: Requirements to Tasks

```text
PRD in Confluence / Office / Git
      | create_design(PRD, repo, SaaS Kit, templates, rules)
      v
Candidate Design
      | validators: coverage, architecture, security, multi-tenancy, RBAC/ABAC
      v
Approved Design
      | decompose_work(Design, PRD, repo, team capacity)
      v
Candidate Tasks
      | validators: missing requirements, duplicates, ownership, task size
      v
Jira / ADO / Linear tasks
```

---

# 4.3 Workflow Example: Gap Analysis

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

# 4.4 Workflow Example: Bug Report to Fix PR

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

# 4.5 Example: Research Flow

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

# 4.6 Example Journeys

```text
1. Plan -> PRD -> ADR -> Design -> Decomposition -> Tasks -> Code -> PR -> Release
2. PR -> Retrieve design context -> Validate -> Fix findings -> Revalidate -> Ready for review
3. Codebase -> Reverse engineer -> Reconstructed design -> Gap validation
4. Changed object -> Traceability analysis -> Staleness detection -> Recommendations
5. Release candidate -> Impact analysis -> Coverage validation -> Approval -> Release decision
6. Bug report -> Reproduction -> Failing test -> Fix PR
7. Research question -> Sources -> Synthesis -> Review -> Published brief
8. Vendor SaaS idea -> Gears Kit -> Generated service -> Deployment automation
```

---

<!-- _class: lead -->

# 5. Reuse, Platform, and Ecosystem

---

# 5.1 Studio Kit Types

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

# 5.2 What a Kit Contains

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

# 5.3 Gears Kit for SaaS Vendors

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

# 5.4 Developer Experience

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

- Studio is a runtime and automation engine for SDLC and adjacent knowledge-work flows
- The Studio Engine provides core objects, scenarios, collaboration, content, workflows, actions, and agent building
- Studio Kits carry process logic and allow teams to compose their own way of working
- Studio ships with default Kits for SaaS, mobile, and web development but does not enforce one process
- Studio is multi-tenant, multi-user, infrastructure agnostic, and SaaS-ready
- Studio is built on Gears and includes a Gears Kit so other vendors can build SaaS products on the same foundation
