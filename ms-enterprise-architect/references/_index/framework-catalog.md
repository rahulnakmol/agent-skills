# Framework Catalog & Selection Guide

**Purpose**: Quick reference for selecting and loading the right architectural framework
**Token Budget**: ~1,000 tokens (~150 lines)
**Last Updated**: November 2025

---

## Quick Decision Matrix

| Your Need | Framework to Use | Load File |
|-----------|------------------|-----------|
| Azure infrastructure design | Azure WAF | Select specific pillar(s) |
| Power Platform solutions | Power Platform WAF | Select specific pillar(s) |
| Complex domain modeling | Domain-Driven Design | `domain-driven-design.md` |
| AI/agentic solutions | Agent Development Framework | `agent-development-framework.md` |
| System decomposition | DDD + Azure/PP WAF | Load both |
| Multi-platform integration | DDD + relevant platform WAF | Load both |

---

## Azure Well-Architected Framework (WAF)

**When to Use**: Any Azure infrastructure or application architecture (IaaS, PaaS, containers, serverless)

**Five Pillars**:

### 1. Reliability
Design systems that recover from failures and continue to function. Covers availability zones, disaster recovery, self-healing, SLA design.
**Keywords**: reliability, availability, failover, disaster recovery, RTO, RPO, resilience
**Load**: `frameworks/azure-waf-reliability.md`

### 2. Security
Protect applications and data through Zero Trust, identity management, encryption, and threat protection.
**Keywords**: security, Zero Trust, authentication, authorization, encryption, compliance
**Load**: `frameworks/azure-waf-security.md`

### 3. Cost Optimization
Design cost-effective architectures through right-sizing, FinOps, reserved instances, and consumption-based pricing.
**Keywords**: cost, optimization, FinOps, budget, pricing, TCO
**Load**: `frameworks/azure-waf-cost-optimization.md`

### 4. Operational Excellence
Implement DevOps, CI/CD, automation, monitoring, and observability for smooth operations.
**Keywords**: operational, DevOps, CI/CD, automation, monitoring, observability
**Load**: `frameworks/azure-waf-operational-excellence.md`

### 5. Performance Efficiency
Design for scale, throughput, and responsiveness through caching, CDN, load balancing, and optimization patterns.
**Keywords**: performance, scalability, caching, load, CQRS, throughput
**Load**: `frameworks/azure-waf-performance-efficiency.md`

**Common Combinations**:
- Mission-critical apps: Reliability + Security + Operational Excellence
- High-scale systems: Performance + Cost + Reliability
- Regulated industries: Security + Reliability + Operational Excellence

---

## Power Platform Well-Architected Framework (WAF)

**When to Use**: Power Apps, Power Automate, Power BI, Power Pages, or Dataverse solutions

**Five Pillars + One**:

### 1. Reliability
Design resilient low-code solutions with error handling, retry logic, and failover strategies.
**Keywords**: reliability, error handling, retry, Power Platform resilience
**Load**: `frameworks/powerplatform-waf-reliability.md`

### 2. Security
Implement DLP policies, connector governance, secure authentication, and data protection.
**Keywords**: security, DLP, data loss prevention, Power Platform security
**Load**: `frameworks/powerplatform-waf-security.md`

### 3. Operational Excellence
Manage ALM, solution layering, environment strategy, and monitoring for Power Platform.
**Keywords**: ALM, application lifecycle, environment strategy, solution layers
**Load**: `frameworks/powerplatform-waf-operational-excellence.md`

### 4. Performance Efficiency
Optimize Dataverse queries, canvas app performance, flow concurrency, and Power BI refresh.
**Keywords**: performance, Dataverse optimization, canvas app performance, delegation
**Load**: `frameworks/powerplatform-waf-performance-efficiency.md`

### 5. Experience Optimization ⭐
Unique to Power Platform: Design intuitive, accessible, adoption-friendly user experiences.
**Keywords**: experience, UX, usability, adoption, accessibility, user experience
**Load**: `frameworks/powerplatform-waf-experience-optimization.md`

**Common Combinations**:
- Enterprise-scale apps: All 5 pillars
- Citizen developer governance: Security + Operational Excellence
- High-adoption solutions: Experience Optimization + Operational Excellence

---

## Domain-Driven Design (DDD) - Strategic Patterns

**When to Use**:
- Complex business domains requiring clear boundaries
- Multi-platform Microsoft ecosystems (Azure + Dynamics + Power Platform)
- System decomposition and microservices architecture
- Team organization and Conway's Law alignment
- Integration patterns between bounded contexts

**Core Concepts**:
- **Bounded Context**: Explicit boundaries where domain models are defined (e.g., Sales, Inventory, HR)
- **Ubiquitous Language**: Shared vocabulary between business and technical teams
- **Context Mapping**: Relationships between bounded contexts (Partnership, Customer-Supplier, ACL, etc.)
- **Strategic Design**: High-level architecture patterns before diving into tactical implementation

**Perfect For**:
- Dynamics 365 + Power Platform + Azure integrations
- Large enterprise transformations with multiple teams
- Legacy modernization requiring clear domain boundaries
- Multi-tenant SaaS architectures

**Keywords**: DDD, bounded context, domain model, ubiquitous language, context map, strategic design
**Load**: `frameworks/domain-driven-design.md`

**Pairs Well With**:
- Azure WAF (for technical implementation of bounded contexts)
- Power Platform WAF (for low-code bounded contexts)
- Large-scale migrations (domain-based decomposition)

---

## Agent Development Framework

**When to Use**:
- AI agent and agentic workflow design
- Multi-agent system orchestration
- Azure OpenAI, Copilot Studio, Semantic Kernel implementations
- Intelligent automation and decision support
- Human-in-the-loop AI systems

**Core Patterns**:
- **Planner Agent**: Decomposes tasks and creates execution plans
- **Executor Agent**: Performs specific actions and API calls
- **Coordinator Agent**: Orchestrates multiple specialist agents
- **Evaluator Agent**: Validates outputs and ensures quality
- **Human-in-the-Loop**: Strategic oversight and approval workflows

**Microsoft Technologies**:
- Azure OpenAI Service (GPT-4, embeddings)
- Copilot Studio (conversational agents)
- Semantic Kernel (agent orchestration)
- AI Search (knowledge retrieval)
- Logic Apps / Power Automate (integration)

**Design Considerations**:
- State management across agent interactions
- Error handling and fallback strategies
- Security and responsible AI principles
- Cost optimization (token usage, API calls)
- Observability and debugging

**Keywords**: agent, agentic, Copilot, Azure OpenAI, multi-agent, orchestrator, Semantic Kernel
**Load**: `frameworks/agent-development-framework.md`

**Pairs Well With**:
- DDD (agent-per-bounded-context pattern)
- Azure WAF Security (responsible AI, threat protection)
- Power Platform WAF (Copilot integration with low-code)

---

## Framework Loading Strategy

### Progressive Loading Pattern

**Step 1: Start Here** (Framework Catalog - you're reading it now)
→ Use decision matrix to identify which framework(s) apply

**Step 2: Load Relevant Framework**
→ Load specific framework file(s) based on your scenario

**Step 3: Deep Dive as Needed**
→ Load complementary frameworks for complex multi-faceted projects

### Example Scenarios

**Scenario 1: "Azure reliability review"**
```
Load: azure-waf-reliability.md
Context: ~2,500 tokens
```

**Scenario 2: "Power Platform enterprise solution"**
```
Load: All 5 Power Platform WAF pillars
Context: ~12,000 tokens
```

**Scenario 3: "Agentic system with Dynamics 365 integration"**
```
Load: agent-development-framework.md + domain-driven-design.md + azure-waf-security.md
Context: ~8,000 tokens
```

**Scenario 4: "Multi-platform enterprise architecture"**
```
Load: domain-driven-design.md → then relevant platform WAF pillars as needed
Progressive context: ~3,000 → ~10,000 → ~18,000 tokens
```

---

## When to Use Multiple Frameworks

**DDD + Azure WAF**: Complex Azure solutions requiring domain boundaries (microservices, domain-per-service)

**DDD + Power Platform WAF**: Enterprise Power Platform with multiple apps and clear business capability boundaries

**Agent Framework + DDD**: Agent-per-bounded-context pattern (specialized agents for different domains)

**Azure WAF + Power Platform WAF**: Hybrid solutions (Power Platform front-end, Azure back-end)

**All Frameworks**: Large-scale enterprise transformation with Azure, Dynamics, Power Platform, and AI agents

---

## Next Steps

After selecting framework(s):
1. Confirm the choice with user (avoid unnecessary context)
2. Load specific framework file(s)
3. Apply framework guidance to architecture design
4. Reference templates for documentation (see `_index/template-guide.md`)

---

*Framework Catalog Version: 1.0*
*Frameworks Covered: 13 (5 Azure WAF + 5 PP WAF + DDD + Agent + Cost)*
*Average framework file: 400-600 lines*
