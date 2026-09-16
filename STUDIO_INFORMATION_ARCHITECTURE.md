# Studio Information Architecture — v3.8

Mind-map export. Root / central node: **Organization**.

> Cross-cutting layers (aspects, not containers): Collaboration · Governance-enforcement · Customization. These surface across the whole map — they are not places/nodes.

```
Organization
├─ Workspace
│  ├─ Project
│  │  ├─ Executive summary
│  │  ├─ Dashboards
│  │  ├─ Project Graph
│  │  │  ├─ Object Browser
│  │  │  │  └─ ⓘ Filter & inspect by type · status · owner · staleness — a filter over the graph, not a catalog; it doesn't duplicate it. Docs → Documents; Work Artifacts → Workflow runs.
│  │  │  ├─ Object detail
│  │  │  │  ├─ Attributes
│  │  │  │  ├─ History
│  │  │  │  ├─ Evidence
│  │  │  │  └─ Related objects
│  │  │  └─ Graph views
│  │  │     ├─ Dependencies and traceability
│  │  │     ├─ Staleness and risk view
│  │  │     └─ Timeline changes / History
│  │  ├─ Lifecycle Model
│  │  │  ├─ Actor
│  │  │  │  ├─ Humans
│  │  │  │  ├─ AI agents
│  │  │  │  ├─ External tools
│  │  │  │  ├─ External systems
│  │  │  │  └─ Automated pipelines
│  │  │  ├─ Stages
│  │  │  │  ├─ Plan
│  │  │  │  │  ├─ Intent
│  │  │  │  │  ├─ Vision
│  │  │  │  │  ├─ Discovery
│  │  │  │  │  ├─ Strategy
│  │  │  │  │  └─ Definition
│  │  │  │  ├─ Build
│  │  │  │  │  ├─ Design
│  │  │  │  │  ├─ Construction
│  │  │  │  │  ├─ Validation
│  │  │  │  │  └─ Release
│  │  │  │  └─ Operate
│  │  │  │     ├─ Operation
│  │  │  │     ├─ Support
│  │  │  │     ├─ Intelligence
│  │  │  │     ├─ Optimization
│  │  │  │     └─ Evolution
│  │  │  ├─ Activities
│  │  │  ├─ Input
│  │  │  ├─ Output
│  │  │  ├─ Quality gates
│  │  │  └─ Synchronisation checkpoints
│  │  ├─ Workflows
│  │  │  ├─ Flow Catalog
│  │  │  ├─ Visual workflow builder
│  │  │  ├─ Runs and history
│  │  │  ├─ Produced artifacts
│  │  │  │  ├─ Work Artifacts → PR · Test · Build · Release · Deployment (latest + gate status)
│  │  │  │  └─ Document Artifacts → land in ▸ Documents (e.g. PRD · register · report · release notes)
│  │  │  ├─ Approvals / exceptions / handoffs
│  │  │  └─ Validators and Policies
│  │  ├─ Recommendations & Actions
│  │  │  ├─ Detected gaps & risks
│  │  │  ├─ Recommendations / Next actions
│  │  │  ├─ Prepared actions
│  │  │  ├─ Action approval queue
│  │  │  ├─ Write-back
│  │  │  └─ Trust level
│  │  ├─ Documents
│  │  │  ├─ Competitive Intelligence
│  │  │  │  ├─ Competitive register
│  │  │  │  ├─ Comparison matrix
│  │  │  │  └─ Pricing benchmark
│  │  │  ├─ Strategy & Planning
│  │  │  │  ├─ Product strategy brief
│  │  │  │  ├─ Roadmap (Now / Next / Later)
│  │  │  │  ├─ One-pager / narrative
│  │  │  │  └─ Opportunity statement
│  │  │  ├─ Specs & Requirements
│  │  │  │  ├─ Problem statement
│  │  │  │  ├─ BRD
│  │  │  │  ├─ PRD
│  │  │  │  ├─ Feature spec
│  │  │  │  └─ Requirement
│  │  │  ├─ Metrics & Performance
│  │  │  │  ├─ Scorecard
│  │  │  │  └─ EPSVS scorecard
│  │  │  ├─ Launch & Release
│  │  │  │  ├─ Launch plan / GTM checklist
│  │  │  │  └─ Release notes
│  │  │  └─ Engineering & Ops
│  │  │     ├─ Design
│  │  │     ├─ ADR
│  │  │     ├─ Decision
│  │  │     ├─ Decomposition
│  │  │     ├─ Test plan / Validation report
│  │  │     ├─ Runbook
│  │  │     └─ Postmortem
│  │  ├─ Developer tools
│  │  │  ├─ CLI
│  │  │  ├─ IDE plugins
│  │  │  ├─ MCP servers
│  │  │  └─ Notifications / alerts
│  │  ├─ Quality Gates (applied)
│  │  │  ├─ Applied gates
│  │  │  └─ Gate status
│  │  └─ Access & Roles (project scope)
│  ├─ Teams and Roles
│  │  ├─ Teams
│  │  ├─ Role assignments (workspace scope · grants from Org catalog)
│  │  └─ Members & seat approvals
│  ├─ Shared assets
│  │  ├─ Guidelines
│  │  ├─ Templates
│  │  ├─ Processes
│  │  ├─ Workflow blueprints
│  │  └─ Shared artifacts
│  ├─ Settings
│  │  ├─ Model routing
│  │  ├─ Connectors (bound)
│  │  ├─ Localization
│  │  ├─ Guardrails & Quality gates
│  │  └─ Secrets & credentials (scoping · rotation)
│  ├─ Environments
│  │  └─ dev · staging · prod (scopes connectors & secrets)
│  └─ Audit log (workspace scope)
├─ Kits & Gears
│  ├─ Kit (package / anatomy)
│  │  ├─ Reference architecture
│  │  ├─ Ontology
│  │  ├─ Templates and examples
│  │  ├─ Sample data (seed graph)
│  │  ├─ Actions and validators
│  │  ├─ Rules and policies
│  │  ├─ Kit Workflows
│  │  ├─ Deployment patterns
│  │  └─ Gears building blocks
│  ├─ Function Kits
│  │  ├─ SDLC Kit (open-source base / default)
│  │  ├─ Product Management Kit
│  │  ├─ Architect Kit
│  │  ├─ Engineering Management Kit
│  │  ├─ DevOps Kit
│  │  ├─ QA Kit
│  │  ├─ Support Kit
│  │  ├─ HypoFinder Kit (research · domain)
│  │  ├─ M&A Kit (domain)
│  │  └─ Any other Kit (placeholder)
│  ├─ Gears
│  │  ├─ Identity
│  │  │  └─ IdP, SSO, tenant identity, user lifecycle
│  │  ├─ Authorization
│  │  │  └─ RBAC, ABAC, granular roles, delegated administration
│  │  ├─ Events
│  │  │  └─ event bus, schemas, routing, audit events
│  │  ├─ Serverless
│  │  │  └─ functions, workflows, safe runtime, connectors
│  │  ├─ GenAI
│  │  │  └─ model gateway, routing, prompts, evaluation
│  │  └─ Platform
│  │     └─ audit, billing, notifications, APIs, integrations
│  └─ Customization
├─ Integrations
│  ├─ ⓘ Studio connects per capability, not per vendor — so a multi-product vendor (GitHub, Jira…) appears in several categories by design; the graph spans tools cross-vendor.
│  ├─ Plan
│  │  ├─ Product & roadmapping
│  │  │  └─ Jira Product Discovery · Productboard · Aha! · Linear
│  │  ├─ Docs & knowledge
│  │  │  └─ Confluence · Notion · MS Office · Google Workspace
│  │  ├─ Design & whiteboarding
│  │  │  └─ Figma · Miro · FigJam
│  │  ├─ Customer feedback / VoC
│  │  │  └─ Canny · UserVoice · Productboard Insights · Dovetail
│  │  ├─ Market & competitive intelligence
│  │  │  └─ Similarweb · G2 · Crunchbase · Klue · Crayon
│  │  └─ User research & surveys
│  │     └─ Dovetail · UserTesting · Maze · Qualtrics
│  ├─ Build
│  │  ├─ Source control
│  │  │  └─ GitHub · GitLab · Bitbucket
│  │  ├─ IDE & coding agents
│  │  │  └─ VS Code · JetBrains · Cursor · Claude Code · Windsurf
│  │  ├─ Issue / work tracking
│  │  │  └─ Jira Software · Azure DevOps · Linear
│  │  ├─ CI/CD & build
│  │  │  └─ Jenkins · GitHub Actions · GitLab CI · Harness
│  │  ├─ Code quality
│  │  │  └─ SonarQube · CodeClimate · Codecov
│  │  ├─ Application security (SAST/DAST/SCA)
│  │  │  └─ Snyk · Semgrep · Checkmarx · Veracode · OWASP ZAP
│  │  ├─ Test management & QA automation
│  │  │  └─ TestRail · Xray · Zephyr · Playwright · Cypress · BrowserStack
│  │  ├─ API design & specs
│  │  │  └─ Postman · SwaggerHub / OpenAPI · Stoplight
│  │  ├─ Package & artifact registries
│  │  │  └─ Artifactory · Nexus · npm · PyPI
│  │  └─ Container registries
│  │     └─ Docker Hub · Amazon ECR · GHCR · Harbor
│  ├─ Operate
│  │  ├─ Cloud & infrastructure
│  │  │  └─ AWS · GCP · Azure · Kubernetes
│  │  ├─ Observability & monitoring
│  │  │  └─ Datadog · Grafana · Prometheus · New Relic · OpenTelemetry
│  │  ├─ Incident & on-call
│  │  │  └─ PagerDuty · Opsgenie · incident.io
│  │  ├─ Support & service desk
│  │  │  └─ Zendesk · Intercom · ServiceNow · Jira Service Mgmt
│  │  ├─ Product analytics
│  │  │  └─ Amplitude · Mixpanel · PostHog · Pendo (also Plan: value sizing)
│  │  ├─ Data warehouse & BI
│  │  │  └─ Snowflake · BigQuery · Databricks · Looker · Tableau · Power BI
│  │  ├─ Data pipelines / ELT / CDP
│  │  │  └─ Fivetran · Airbyte · dbt · Airflow · Kafka · Segment
│  │  ├─ Feature flags & experimentation
│  │  │  └─ LaunchDarkly · Split · Optimizely · Statsig
│  │  ├─ Infrastructure as Code
│  │  │  └─ Terraform · Pulumi · Ansible · CloudFormation
│  │  ├─ Cloud security & posture
│  │  │  └─ Wiz · Prisma Cloud · Aqua · Trivy
│  │  └─ FinOps / cloud cost
│  │     └─ Kubecost · CloudHealth · Vantage · AWS Cost Explorer
│  └─ Cross-cutting (spans all phases)
│     ├─ Communication / ChatOps
│     │  └─ Slack · MS Teams · Zoom
│     ├─ AI models & Agent SDKs
│     │  └─ model gateways · agent SDKs · Bedrock / Vertex
│     ├─ Identity & access (SSO/SCIM)
│     │  └─ Okta · Microsoft Entra ID · Auth0 · Google
│     ├─ Secrets management
│     │  └─ HashiCorp Vault · AWS/GCP Secrets Manager · Doppler
│     └─ Business & GTM (optional scope)
│        └─ Salesforce · HubSpot · Stripe
├─ Constructor Insight
│  ├─ Cross-vendor data (via Integrations connectors — bound at Workspace ▸ Settings)
│  ├─ Analytics (renders into Project ▸ Dashboards: delivery health · AI cost · product metrics)
│  └─ Benchmarking (cost / quality vs industry & peer baselines — scope: Workspace, opt-in Org roll-up)
├─ Governance
│  ├─ Org guardrails & policies
│  ├─ Access-control policy (org-wide: SSO-required · no-external-sharing · separation-of-duties)
│  ├─ Audit (org)
│  ├─ Deployment governance
│  └─ Data residency & region (Org policy · per-Workspace region)
└─ Account & Access
   ├─ Users & Access
   │  ├─ Users / People / identity
   │  ├─ SSO / SCIM
   │  ├─ Role definitions (org catalog)
   │  └─ Access control (RBAC / ABAC)
   └─ Billing & Account
      ├─ Subscription plan
      ├─ Billing account
      └─ Usage / AI cost
```
