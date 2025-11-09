# Quick Reference - Common Patterns & Cheat Sheets

**Purpose**: Instant access to most common patterns, cheat sheets, and emergency resources
**Token Budget**: ~1,500 tokens (~200 lines)
**Last Updated**: November 2025

---

## Top 10 Request Patterns

### 1. Vision Phase Assessment
**Request**: "Help create a Target Operating Model"
**Quick Response**:
- Load: `phase-summaries.md` → `phase-vision.md` → `vision-phase-templates.md`
- Deliverables: TOM diagram, maturity assessment, gap analysis, roadmap
- Typical duration: 4-8 weeks
- **Start now**: Ask about current state (as-is) and desired state (to-be)

### 2. Azure Architecture Review
**Request**: "Review my Azure architecture"
**Quick Response**:
- Load: `framework-catalog.md` → Identify relevant WAF pillars
- Common: Reliability + Security + Performance
- Tools: Azure Advisor, Well-Architected Review
- **Start now**: Ask which pillar(s) are the priority

### 3. Power Platform Solution Design
**Request**: "Design a Power Platform solution"
**Quick Response**:
- Load: `framework-catalog.md` → Power Platform WAF pillars
- Key considerations: Experience Optimization, ALM, DLP policies
- **Start now**: Ask about user count, data volume, integration needs

### 4. Migration Planning
**Request**: "Plan a large-scale migration"
**Quick Response**:
- Load: `phase-summaries.md` + `large-scale-migrations.md`
- Phases: Assess → Plan → Migrate → Optimize
- **Start now**: Ask about source system, data volume, downtime tolerance

### 5. Business Case Creation
**Request**: "Build a business case for [solution]"
**Quick Response**:
- Load: `business-case-templates.md`
- Use xlsx skill for financial modeling
- Key metrics: TCO, ROI, payback period
- **Start now**: Ask about current costs, expected benefits

### 6. Agentic Solution Design
**Request**: "Design an AI agent system"
**Quick Response**:
- Load: `agent-development-framework.md`
- Patterns: Planner, Executor, Coordinator, Evaluator
- Technologies: Azure OpenAI, Semantic Kernel, Copilot Studio
- **Start now**: Ask about use case, human-in-the-loop needs

### 7. Domain Modeling (DDD)
**Request**: "Help model our business domains"
**Quick Response**:
- Load: `domain-driven-design.md`
- Identify: Bounded contexts, ubiquitous language, context maps
- **Start now**: Ask about business capabilities, team structure

### 8. Create Architecture Diagrams
**Request**: "Create C4 diagrams for my solution"
**Quick Response**:
- Use inline templates from `template-guide.md`
- For complex: Load `mermaid-diagram-patterns.md`
- **Start now**: Ask which level (Context, Container, Component)

### 9. Security & Compliance Design
**Request**: "Design for HIPAA/GDPR compliance"
**Quick Response**:
- Load: `regulated-industries.md` + `azure-waf-security.md`
- Key: Zero Trust, encryption, compliance certifications
- **Start now**: Ask which regulations apply

### 10. Multi-Geo Deployment
**Request**: "Design for global deployment"
**Quick Response**:
- Load: `multi-geo-deployments.md`
- Key: Data residency, latency, compliance
- **Start now**: Ask about regions, data sovereignty requirements

---

## Azure Services Quick Reference

### Compute
- **VMs**: IaaS, full control, lift-and-shift
- **App Service**: PaaS web apps, easy scaling
- **Functions**: Serverless, event-driven, pay-per-execution
- **Container Apps**: Kubernetes-based, microservices
- **AKS**: Full Kubernetes control

### Data & Storage
- **Storage Account**: Blob, file, queue, table storage
- **SQL Database**: Managed relational database
- **Cosmos DB**: Multi-model NoSQL, global distribution
- **Synapse**: Data warehouse, big data analytics
- **Data Factory**: ETL/ELT orchestration

### Integration
- **Logic Apps**: Low-code workflows
- **Service Bus**: Enterprise messaging
- **Event Grid**: Event-driven architectures
- **API Management**: API gateway, policy management

### AI & Analytics
- **OpenAI Service**: GPT-4, embeddings, completions
- **AI Search**: Semantic search, RAG
- **Machine Learning**: Model training, deployment
- **Synapse**: Analytics, data warehousing

### Security & Identity
- **Entra ID**: Identity and access management
- **Key Vault**: Secrets, keys, certificates
- **Defender**: Threat protection
- **Sentinel**: SIEM and SOAR

---

## Power Platform Components Quick Reference

### Power Apps
- **Canvas Apps**: Pixel-perfect UX, mobile-first
- **Model-Driven Apps**: Data-driven, Dataverse-based
- **Power Pages**: External websites, low-code

### Power Automate
- **Cloud Flows**: Automated workflows
- **Desktop Flows**: RPA (Robotic Process Automation)
- **Process Advisor**: Process mining

### Power BI
- **Reports**: Interactive visualizations
- **Dashboards**: Executive summaries
- **Dataflows**: ETL, data preparation
- **Paginated Reports**: Print-optimized, operational

### Dataverse
- **Tables**: Entity storage
- **Business Rules**: No-code logic
- **Plugins**: Custom .NET code
- **Virtual Tables**: External data integration

### Copilot Studio
- **Conversational AI**: Chatbots, virtual agents
- **Topics**: Conversation flows
- **Generative Answers**: AI-powered responses
- **Skills**: Extend M365 Copilot

---

## Dynamics 365 Modules Quick Reference

### Customer Engagement
- **Sales**: CRM, opportunity management
- **Service**: Case management, knowledge base
- **Marketing**: Campaign automation, journey orchestration
- **Field Service**: Work orders, scheduling

### Finance & Operations
- **Finance**: General ledger, accounts payable/receivable
- **Supply Chain**: Inventory, procurement, logistics
- **Manufacturing**: Production control, MRP
- **Commerce**: Retail, e-commerce

---

## Emergency Quick Links

### Critical Issues
**Incident Response**: Load `emergency-response.md`
- Service degradation protocols
- Security incident handling
- Escalation procedures
- Post-incident review

### Essential Resources
**Microsoft Documentation**: Load `essential-resources.md`
- Microsoft Learn portals
- WAF assessment tools
- Pricing calculators
- Community forums

### Quality Standards
**Deliverable Quality**: Load `quality-standards.md`
- Demonstrates mastery
- Inspires confidence
- Drives action
- Creates value
- Enables success

---

## Cheat Sheet: When to Use Which Platform

| Use Case | Recommended Platform | Why |
|----------|---------------------|-----|
| Custom web app | Azure App Service | PaaS, auto-scaling, easy deployment |
| Microservices | Azure Container Apps | Serverless containers, Dapr integration |
| Internal business app | Power Apps (Model-Driven) | Dataverse, rapid development |
| External portal | Power Pages | Low-code, authentication |
| Complex workflow | Power Automate | 400+ connectors, approval flows |
| Real-time analytics | Power BI | Interactive dashboards, AI insights |
| CRM needs | Dynamics 365 Sales | Industry-standard, M365 integration |
| ERP needs | Dynamics 365 F&O | Comprehensive, scalable |
| AI agents | Azure OpenAI + Copilot Studio | Enterprise-grade, responsible AI |
| Global SaaS | Azure + Cosmos DB | Multi-region, low latency |

---

## Decision Framework: Build vs Buy vs Configure

### Build (Custom Development - Azure)
**When**:
- Unique competitive advantage
- Complex custom logic
- Extreme scale requirements
- Full control needed

**Platform**: Azure (App Service, Functions, AKS)

### Configure (Low-Code - Power Platform)
**When**:
- Standard business processes
- Rapid deployment needed
- Citizen developer enablement
- Microsoft 365 integration

**Platform**: Power Platform

### Buy (SaaS - Dynamics 365)
**When**:
- Industry-standard processes
- Proven best practices
- Time-to-value critical
- Minimize customization

**Platform**: Dynamics 365

### Hybrid (Common)
**Pattern**: Dynamics 365 core + Power Platform extensions + Azure services for custom needs

---

## Common Architecture Patterns

### 1. API-First Architecture
- Azure API Management (gateway)
- Backend APIs (Azure Functions/App Service)
- Multiple front-ends (web, mobile, Power Apps)

### 2. Event-Driven Architecture
- Event Grid (event routing)
- Service Bus (reliable messaging)
- Functions (event processing)

### 3. CQRS (Command Query Responsibility Segregation)
- Write: Dynamics/Dataverse
- Read: Power BI/Synapse (optimized for queries)

### 4. Multi-Tenant SaaS
- Tenant isolation: Subscription/Resource Group per tenant
- Shared services: API Management, Identity
- Data: Cosmos DB with partition keys

### 5. Hybrid Integration
- On-premises: Data Gateway
- Cloud: Logic Apps/Power Automate
- Secure: VPN/ExpressRoute

---

## Success Metrics Cheat Sheet

### Delivery Quality
- First-time approval rate: > 90%
- Customer satisfaction: > 4.5/5
- Technical accuracy: 100%
- On-time delivery: > 95%
- Budget adherence: ±5%

### Business Impact
- ROI achievement: Exceeds projection
- Adoption rate: > 80%
- User satisfaction: > 4/5
- Process improvement: > 30%
- Incident reduction: > 40%

### Technical Excellence
- Availability SLA: 99.9%+
- Performance: < 2s response time
- Security: Zero critical vulnerabilities
- Test coverage: > 80%
- Documentation: 100% complete

---

## Next Steps

This quick reference provides instant answers to common requests. For deeper guidance:

1. **Identify your scenario** from Top 10 patterns above
2. **Load recommended references** listed for that scenario
3. **Apply frameworks and templates** to your specific context
4. **Create deliverables** using relevant skills (pptx, docx, xlsx, pdf)

---

*Quick Reference Version: 1.0*
*Covers: 10 common patterns, 30+ Azure services, 4 Power Platform components, Dynamics modules*
*Integration: All skills (pptx, docx, xlsx, pdf)*
