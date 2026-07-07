---
marp: true
theme: rose-pine-moon
paginate: true
size: 16:9
---

# Constructor Gears Quality Framework

Constructor Gears is evaluated across five quality vectors that guide
architecture, implementation, validation, and continuous improvement
throughout the software lifecycle.

> **Note:** The **North Star Metric** is the primary indicator for each
> quality vector. The **Example Metrics** column contains representative
> metrics that teams may use to measure and monitor that vector. The
> specific metrics can evolve over time.

---

| Quality Vector | Guiding Question | Description | North Star Metric | Example Metrics (non-exhaustive) |
| --- | --- | --- | --- | --- |
| **Efficiency** | How quickly and economically can software be built, deployed, and operated? | Minimize the time, effort, and cost required to design, build, deploy, and operate software through AI, automation, reuse, composability, extensibility, and operability. | **Total Cost of Ownership (TCO)** | Time from approved PRD to production; TCO to build and operate a feature, Gear, or product; Lead time for change; Cost per delivered feature; Infrastructure cost per transaction/workflow; Infrastructure cost per tenant/service |
| **Reliability** | How dependable is it? | Provide continuous, fault-tolerant service with predictable behavior during failures, upgrades, and peak load. | **Service availability (SLA)** | MTTR; MTBF; Failed workflow rate; Change failure rate; Successful deployment rate; Error rate; Disaster recovery success rate |
| **Performance** | How fast does it execute? | Deliver consistently low latency and high throughput while efficiently utilizing system resources. | **P99 workflow latency** | Transactions/workflows per second; Average response time; P99/P999 latency; Resource utilization (CPU/Memory) per transaction; % of performance SLAs met; Cold start time |
| **Security** | How well is it protected? | Protect applications, data, identities, and platform services through secure-by-design principles and continuous compliance. | **Critical security findings in production (Target: 0)** | Security policy compliance; Secrets management coverage; Mean time to remediate vulnerabilities; Dependency compliance; Secure coding compliance; Security incident rate |
| **Versatility** | How many real-world scenarios can it support without building a new platform? | Support the broadest range of business scenarios, industries, deployment models, and architectural patterns using a common platform. | **% of target business scenarios supported out of the box** | Supported business scenarios; Supported deployment models; Supported integration types; Supported business domains; Configuration vs. customization ratio; Feature coverage across target scenarios |

---

## Summary

The quality vectors are prioritized as follows:

1. **Efficiency** — Minimize engineering effort and operational cost
   across the software lifecycle.
2. **Reliability** — Ensure continuous, predictable operation.
3. **Performance** — Deliver fast execution under production
   workloads.
4. **Security** — Protect the platform by design and maintain
   continuous compliance.
5. **Versatility** — Maximize the range of business scenarios
   supported by a common platform.
