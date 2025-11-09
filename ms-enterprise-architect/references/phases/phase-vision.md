---
category: phase
phase_name: vision
loading_priority: 2
tokens_estimate: 654
dependencies: [frameworks/domain-driven-design, technology/core-platforms, technology/m365-specifics, technology/power-platform-specifics, technology/azure-specifics, technology/dynamics-specifics, technology/ai-cognitive-specifics, frameworks/azure-waf-reliability, frameworks/azure-waf-security, frameworks/azure-waf-cost-optimization, frameworks/azure-waf-operational-excellence, frameworks/azure-waf-performance-efficiency, frameworks/powerplatform-waf-reliability, frameworks/powerplatform-waf-security, frameworks/powerplatform-waf-operational-excellence, frameworks/powerplatform-waf-performance-efficiency, frameworks/powerplatform-waf-experience-optimization, templates/vision-phase-templates, templates/business-case-templates, templates/mermaid-diagram-patterns, templates/architecture-decision-records]
keywords: [vision-phase, domain-discovery, maturity-assessment, current-state-architecture, target-operating-model, gap-analysis, business-case, roadmap-definition, well-architected-framework, domain-driven-design, exit-criteria, mermaid-patterns]
version: 1.0
last_updated: 2025-11-09
---

# Vision Phase

## Overview

**Duration**: 8-12 weeks

**Focus Areas**: Define business objectives, understand current state, conduct gap analysis, perform maturity modeling, and generate comprehensive Target Operating Model (TOM)

**Primary Stakeholders**:
- Executive sponsors and C-suite leadership
- Business unit leaders and department heads
- Enterprise architects and technical leads
- Change management and organizational development teams
- Key business process owners
- IT leadership and infrastructure teams

**Expected Outcomes**:
- Clear understanding of current state capabilities and pain points
- Documented vision and strategic direction aligned with business objectives
- Comprehensive Target Operating Model (both functional and technical)
- Prioritized gap analysis with implementation roadmap
- Compelling business case with ROI projections
- Executive alignment and stakeholder commitment
- Funded plan for next phase (Validate or Construct)

The Vision phase is where transformation begins. This is the strategic foundation that defines what success looks like, why it matters to the business, and how we'll achieve it. Skip this phase at your peril—without a clear vision, projects drift, stakeholders misalign, and investments fail to deliver expected value.

## Objectives

The Vision phase establishes the strategic foundation for enterprise transformation:

### Establish Domain Model and Bounded Contexts
Using Domain-Driven Design principles, identify the core business domains, supporting subdomains, and generic subdomains that comprise your enterprise ecosystem. Establish ubiquitous language that bridges business and technology teams, ensuring everyone speaks the same language when discussing capabilities, processes, and systems.

→ Load: `references/frameworks/domain-driven-design.md` for detailed DDD methodology

### Assess Current State Maturity
Conduct comprehensive assessment of organizational maturity across multiple dimensions:
- Platform adoption and usage (M365, Power Platform, Azure, Dynamics 365)
- Cloud adoption maturity using Microsoft Cloud Adoption Framework
- DevOps and operational maturity
- Security posture and compliance readiness
- Data management and governance maturity
- Change management and adoption capabilities

This assessment reveals not just technical gaps, but organizational readiness for transformation.

### Define Target Operating Model

**Functional TOM** defines how the business will operate:
- Business capability mapping aligned to value streams
- Organizational structure and operating model design
- Process frameworks and governance structures
- Roles, responsibilities, and decision rights
- Performance metrics and KPIs

**Technical TOM** defines the technology foundation:
- Target state architecture and system landscape
- Platform selection rationale and integration strategy
- Data architecture and information flows
- Security architecture and compliance framework
- Infrastructure and hosting decisions
- Application portfolio rationalization

### Identify Capability Gaps and Priorities
Compare current state against target state to identify gaps in:
- Business capabilities required but missing or immature
- Technology platforms needed for target architecture
- Integration points requiring new or enhanced connectivity
- Data quality, governance, and management gaps
- Security and compliance deficiencies
- Skills and organizational capabilities

Prioritize gaps using a framework that considers:
- Business value and strategic alignment
- Implementation complexity and risk
- Dependencies and sequencing constraints
- Resource requirements and availability
- Quick wins vs. foundational investments

### Build Business Case
Develop comprehensive business case that quantifies:
- Total Cost of Ownership (TCO) for current vs. target state
- Investment requirements (capital and operational)
- Quantified benefits (cost savings, revenue enablement, risk mitigation)
- Risk-adjusted ROI and payback period
- Implementation timeline and phasing approach
- Sensitivity analysis showing impact of key assumptions

The business case must be credible, defensible, and compelling. It's the foundation for securing executive approval and funding.

### Secure Executive Alignment
Vision phase culminates in executive alignment on:
- Strategic vision and business objectives
- Target Operating Model (functional and technical)
- Investment requirements and expected returns
- Risks and mitigation strategies
- Governance model and decision rights
- Commitment to next phase

Without this alignment, projects proceed at risk. The Vision phase creates the shared understanding and commitment essential for transformation success.

## Key Activities

### Domain Discovery

Domain discovery workshops are the foundation of the Vision phase. Using Domain-Driven Design principles, facilitate collaborative sessions with business and technology stakeholders to:

**Identify Core Domain, Supporting Subdomains, and Generic Subdomains**:
- **Core Domain**: The unique business capabilities that provide competitive advantage and are central to your organization's value proposition
- **Supporting Subdomains**: Important capabilities that support the core domain but aren't differentiators
- **Generic Subdomains**: Commodity capabilities that every organization needs (e.g., identity management, document management)

This distinction is critical—it guides where to invest in custom solutions (core domain) vs. adopt standard platforms (generic subdomains).

**Establish Ubiquitous Language**:
Create a shared vocabulary that both business and technical teams use consistently. Document key terms, their definitions, and context. This language becomes the foundation for all requirements, designs, and implementations.

**Map Business Capabilities to Value Streams**:
- Identify end-to-end value streams that deliver outcomes to customers
- Map business capabilities to each value stream
- Understand which capabilities are critical to value delivery
- Identify capability interdependencies

**Document Domain Events**:
Capture significant business events that occur within and across domains. These events often become the basis for event-driven architectures and integration patterns.

**Workshop Facilitation Approach**:
- Event storming sessions to discover domain events and workflows
- Business capability modeling workshops
- Context mapping exercises to define bounded contexts
- Cross-functional collaboration with business and IT stakeholders

→ Load: `references/frameworks/domain-driven-design.md` for detailed workshop facilitation techniques

### Maturity Assessment

Conduct structured assessment of current state maturity using platform-specific frameworks:

**Platform-Specific Maturity Models**:
- **M365**: Collaboration maturity, security posture, compliance readiness, adoption metrics
- **Power Platform**: ALM maturity, governance, CoE implementation, citizen development enablement
- **Azure**: Cloud adoption maturity, DevOps practices, well-architected alignment
- **Dynamics 365**: Business process optimization, data quality, integration maturity

**Microsoft Cloud Adoption Framework Maturity**:
Assess organizational maturity across CAF phases:
- Strategy definition and business outcome alignment
- Planning and digital estate assessment
- Ready phase (skills, governance, environment preparation)
- Adoption phase (migration and innovation capabilities)
- Govern and manage capabilities

**Assessment Methodology**:
- Stakeholder interviews and surveys
- Technical architecture reviews
- Usage analytics and telemetry analysis
- Process observation and documentation review
- Comparative benchmarking against industry standards

**Scoring Approach**:
Use consistent maturity scale:
1. **Initial/Ad-hoc**: Unpredictable, poorly controlled, reactive
2. **Repeatable**: Process discipline, project-based
3. **Defined**: Proactive, standardized processes
4. **Managed**: Measured and controlled
5. **Optimizing**: Continuous improvement, innovation

**Gap Identification**:
Document gaps between current maturity and required maturity for target state. Prioritize gaps based on impact to business objectives.

→ Load: `references/technology/core-platforms.md` + specific platform files for assessment frameworks

### Current State Architecture

Document the as-is system landscape with rigorous detail:

**As-Is System Landscape Documentation**:
- Complete inventory of applications, platforms, and infrastructure
- System ownership, users, and business criticality
- Technology stack and versions
- Hosting models (on-premises, cloud, hybrid)
- Licensing and cost models

**Integration Mapping**:
- All integration points between systems
- Integration patterns (API, file transfer, database, messaging)
- Data flows and transformation logic
- Integration frequency and volumes
- Error handling and monitoring approaches

**Data Flow Analysis**:
- Data sources and authoritative systems
- Data movement patterns and ETL/ELT processes
- Data quality issues and governance gaps
- Master data management approach
- Data residency and compliance considerations

**Technology Inventory**:
- Infrastructure (servers, storage, network)
- Middleware and integration platforms
- Databases and data stores
- Security tools and identity systems
- Monitoring and management tools

**Pain Point Identification**:
Capture current state challenges:
- Performance bottlenecks and scalability limitations
- Integration fragility and maintenance burden
- Security vulnerabilities and compliance gaps
- User frustration and adoption barriers
- Technical debt and aging technology
- Cost inefficiencies and licensing waste

→ Use Mermaid: C4 Context diagram for current landscape visualization

### Target Operating Model Development

#### Functional TOM

The Functional TOM defines how the business will operate in the target state:

**Business Capability Mapping**:
Create hierarchical capability map organized by business domains. For each capability, document:
- Capability name and description
- Business value and strategic importance
- Current maturity level
- Target maturity level
- Gap and investment priority

**Operating Model Design**:
Define organizational structure and ways of working:
- Governance structures and decision rights
- Operating rhythm (planning cycles, review cadences)
- Cross-functional collaboration models
- Centers of Excellence and competency centers
- Roles and responsibilities (RACI matrices)

**Organizational Structure**:
Design organizational model that supports target capabilities:
- Reporting structures aligned to value streams
- Team topologies and interaction modes
- Skills and competency frameworks
- Change management and adoption approaches

**Value Stream Mapping**:
Map end-to-end value streams showing:
- Customer touchpoints and experiences
- Process steps and handoffs
- Systems supporting each step
- Metrics and performance targets
- Opportunities for optimization

**Process Frameworks**:
Define process standards and methodologies:
- Process modeling standards
- Process governance and ownership
- Continuous improvement frameworks
- Exception handling approaches

→ Use template: `templates/vision-phase-templates.md` (Functional TOM section)
→ Use Mermaid: Capability maps, value stream diagrams

#### Technical TOM

The Technical TOM defines the technology foundation:

**Target State Architecture**:
Design comprehensive target architecture including:
- System landscape with all applications and platforms
- Integration architecture and patterns
- Data architecture and information model
- Security architecture and Zero Trust implementation
- Infrastructure architecture and hosting strategy
- Application portfolio rationalization decisions

**Platform Selection Rationale**:
Document why specific platforms were selected:
- Business requirements driving platform choice
- Comparison of alternatives considered
- TCO and licensing implications
- Technical capabilities and limitations
- Roadmap alignment and vendor direction
- Skills availability and ecosystem support

**Integration Architecture**:
Define how systems connect and communicate:
- Integration patterns for different scenarios
- API management and governance
- Event-driven architecture where appropriate
- Data synchronization approaches
- Error handling and resilience patterns
- Monitoring and observability

**Data Architecture**:
Design data foundation:
- Logical data model
- Data domains and ownership
- Master data management approach
- Data governance framework
- Analytics and reporting architecture
- Data retention and archival policies

**Security Architecture**:
Define security foundation based on Zero Trust principles:
- Identity and access management
- Network security and segmentation
- Data protection and encryption
- Threat protection and detection
- Compliance and governance controls
- Security operations model

→ Use template: `templates/vision-phase-templates.md` (Technical TOM section)
→ Use Mermaid: C4 Context (target state), context maps with integration patterns

### Gap Analysis

Systematic comparison of current state vs. target state:

**Current vs Target Comparison (Systems)**:
- Systems to retire, retain, replace, or modernize
- New platforms to introduce
- Integration points to add, modify, or remove
- Infrastructure changes required
- Licensing and cost delta

**Current vs Target Comparison (Capabilities)**:
- Capability maturity gaps to close
- New capabilities to build or acquire
- Processes to redesign
- Organizational changes needed
- Skills to develop or acquire

**Prioritization Framework**:
Prioritize gaps using 2x2 matrix or weighted scoring:
- **Business Value**: Strategic alignment, ROI, risk mitigation
- **Implementation Complexity**: Technical difficulty, dependencies, risk
- **Quick Wins**: High value, low complexity (do first)
- **Foundation**: Lower value, but required for other initiatives
- **Strategic Bets**: High value, high complexity (plan carefully)
- **Defer**: Low value initiatives to postpone

**Risk and Dependency Mapping**:
- Technical dependencies between initiatives
- Organizational change dependencies
- Skills and resource constraints
- External dependencies (vendor, regulatory)
- Risk identification and mitigation strategies

**Investment Requirements**:
Estimate investment for each gap:
- Platform licensing costs
- Implementation services
- Infrastructure costs
- Training and change management
- Ongoing operational costs

→ Use Mermaid: Before/after architecture comparison diagrams
→ Use template: `templates/vision-phase-templates.md` (Gap Analysis section)

### Business Case Development

Build comprehensive, defensible business case:

**ROI Modeling Approach**:
- 3-5 year financial projection
- Itemized costs by category and year
- Quantified benefits by category and year
- Net present value (NPV) calculation
- Internal rate of return (IRR)
- Payback period

**Cost Estimation (TCO)**:
**Implementation Costs**:
- Platform licensing (initial and recurring)
- Professional services and implementation labor
- Infrastructure and hosting
- Data migration
- Training and change management
- Contingency (typically 15-20%)

**Ongoing Costs**:
- Annual licensing and subscriptions
- Support and maintenance
- Operational costs (hosting, monitoring)
- Continuous improvement and enhancements
- Skills development

**Benefit Quantification**:
**Hard Benefits** (quantifiable):
- Cost reduction (labor, licensing, infrastructure)
- Revenue enablement (new capabilities, faster time-to-market)
- Productivity improvements (time savings × hourly rate × affected users)
- Risk mitigation (cost of incidents × probability reduction)

**Soft Benefits** (qualitative):
- Improved customer satisfaction
- Better employee experience
- Enhanced decision-making
- Increased agility and innovation
- Competitive advantage

**Risk-Adjusted Returns**:
Apply probability weighting to uncertain benefits. Conservative estimates build credibility.

**Investment Timeline**:
Phased investment plan showing:
- Expenditure by quarter
- Benefit realization timing
- Cumulative cash flow
- Break-even point

**Sensitivity Analysis**:
Test assumptions showing impact of:
- Adoption rate variations
- Cost overruns
- Benefit shortfalls
- Timeline delays

→ Use skills: xlsx (financial models) + docx (business case narrative)
→ Use template: `templates/business-case-templates.md`

### Roadmap Definition

Create implementation roadmap from current to target state:

**Phasing Strategy**:
Define logical phases considering:
- Dependencies and prerequisites
- Quick wins for momentum
- Foundation before advanced capabilities
- Risk management through incremental delivery
- Resource constraints and capacity

**Dependencies and Sequencing**:
- Technical dependencies (infrastructure before applications)
- Data migration sequencing
- Integration build order
- Training and change management timing
- Governance establishment

**Resource Planning**:
Estimate resource requirements:
- Internal team capacity
- External consultant needs
- Vendor and partner resources
- Executive sponsor time commitment
- User community engagement

**Timeline with Milestones**:
- Phase start and end dates
- Key milestones and decision points
- Go-live dates for each capability
- Review and governance checkpoints
- Benefits realization tracking points

**Decision Points**:
Build in stage gates for:
- Executive approval to proceed
- Pivot/persevere decisions
- Scope adjustments
- Budget re-approval
- Lessons learned reviews

→ Use Mermaid: Gantt chart for roadmap visualization

## Deliverable Package

Complete set of Vision phase outputs:

- **Vision Strategy Presentation** (→ pptx skill)
  - Executive summary of vision and strategic objectives
  - Current state assessment findings
  - Target Operating Model overview
  - Business case summary
  - Recommended roadmap and next steps
  - Stakeholder alignment confirmation

- **Functional TOM Documentation** (→ docx skill + Mermaid diagrams)
  - Business capability maps
  - Operating model design
  - Organizational structure
  - Value stream maps
  - Process frameworks
  - Governance model

- **Technical TOM Documentation** (→ docx skill + Mermaid diagrams)
  - Target state architecture
  - System landscape diagrams
  - Integration architecture
  - Data architecture
  - Security architecture
  - Platform selection rationale

- **Maturity Assessment Report** (→ pdf/docx skill)
  - Current state maturity scores
  - Assessment methodology
  - Findings by domain/platform
  - Gap summary
  - Benchmarking results

- **Gap Analysis Document** (→ docx skill + Mermaid comparisons)
  - Current vs. target comparison
  - Prioritized gap list
  - Implementation complexity assessment
  - Risk and dependency analysis
  - Investment requirements

- **Business Case** (→ xlsx skill + docx skill)
  - Financial model (Excel)
  - Business case narrative
  - Assumptions documentation
  - Sensitivity analysis
  - Benefits realization plan

- **Phase Roadmap** (→ pptx/docx skill + Gantt in Mermaid)
  - Multi-year roadmap
  - Phased delivery approach
  - Milestones and decision points
  - Resource plan
  - Risk management approach

- **Architecture Decision Records** (→ pdf/docx skill)
  - Key architectural decisions
  - Options considered
  - Decision rationale
  - Implications and consequences
  - Review and approval status

## Well-Architected Framework Application

Apply Well-Architected Framework as aspirational framework in Vision phase. Define target state for each pillar that will guide design in later phases.

### For Azure Workloads

**Reliability**:
- Define target RTO (Recovery Time Objective) and RPO (Recovery Point Objective)
- Establish availability requirements (99.9%, 99.95%, 99.99%)
- Determine redundancy requirements (zone, region, multi-region)
- Plan for disaster recovery approach
- Define health monitoring strategy

→ Load: `frameworks/azure-waf-reliability.md`

**Security**:
- Establish Zero Trust principles as foundation
- Define compliance requirements (GDPR, HIPAA, SOC 2, etc.)
- Plan identity and access management approach
- Determine data classification and protection requirements
- Set threat protection strategy

→ Load: `frameworks/azure-waf-security.md`

**Cost Optimization**:
- Set budget parameters and governance
- Define optimization targets (waste reduction, right-sizing)
- Establish FinOps practices and accountability
- Plan licensing strategy
- Determine cost allocation and chargeback model

→ Load: `frameworks/azure-waf-cost-optimization.md`

**Operational Excellence**:
- Define Infrastructure as Code (IaC) approach
- Set DevOps maturity targets
- Plan for automation and CI/CD
- Establish monitoring and observability strategy
- Define operational procedures and runbooks

→ Load: `frameworks/azure-waf-operational-excellence.md`

**Performance Efficiency**:
- Set performance targets (latency, throughput)
- Define scalability requirements and patterns
- Plan caching strategy
- Determine load balancing approach
- Establish performance testing methodology

→ Load: `frameworks/azure-waf-performance-efficiency.md`

### For Power Platform Workloads

**Reliability**:
- Define availability targets for critical apps
- Establish backup and recovery requirements
- Plan Dataverse resilience
- Determine data loss prevention needs
- Set service health monitoring approach

→ Load: `frameworks/powerplatform-waf-reliability.md`

**Security**:
- Define Data Loss Prevention (DLP) policy framework
- Establish data classification model
- Plan connection security approach
- Determine access control model (Azure AD groups, sharing)
- Set compliance monitoring strategy

→ Load: `frameworks/powerplatform-waf-security.md`

**Operational Excellence**:
- Define Application Lifecycle Management (ALM) approach
- Establish environment strategy (dev, test, prod)
- Plan Center of Excellence (CoE) implementation
- Set governance for citizen development
- Determine support model and SLAs

→ Load: `frameworks/powerplatform-waf-operational-excellence.md`

**Performance Efficiency**:
- Set user load targets and capacity planning
- Define delegation strategies for performance
- Plan for connector throttling mitigation
- Establish performance testing approach
- Determine scalability patterns

→ Load: `frameworks/powerplatform-waf-performance-efficiency.md`

**Experience Optimization**:
- Define accessibility standards (WCAG compliance)
- Set usability and UX design principles
- Establish adoption measurement approach
- Plan persona-based experience design
- Determine feedback collection mechanisms

→ Load: `frameworks/powerplatform-waf-experience-optimization.md`

**Document Architectural Principles**: Create clear, actionable architectural principles derived from WAF pillars that will guide all design decisions. Examples: "Always implement redundancy at critical layers," "Security by design, not retrofit," "Optimize for total cost, not just license cost."

## Domain-Driven Design Integration

Context mapping is a central artifact of the Technical TOM, defining how systems and teams interact.

### Identify Bounded Contexts from Capability Map

Each business capability or logical grouping becomes a bounded context:
- Sales bounded context (opportunity management, quote generation)
- Customer Service bounded context (case management, knowledge base)
- Finance bounded context (billing, revenue recognition, GL)
- HR bounded context (recruiting, onboarding, performance management)

### Define Context Relationships Using Mapping Patterns

**Partnership**:
- Two contexts with mutual dependency
- Coordinated planning and joint governance
- Example: Sales and Marketing contexts sharing campaign data

**Customer-Supplier**:
- Downstream context depends on upstream context
- Upstream defines interface, downstream consumes
- Example: Order Management (downstream) depends on Product Catalog (upstream)

**Conformist**:
- Downstream accepts upstream model without translation
- Used when upstream won't/can't change
- Example: Consuming third-party API as-is

**Anti-Corruption Layer (ACL)**:
- Downstream protects itself from upstream changes
- Translation layer isolates contexts
- Critical pattern when integrating legacy or external systems
- Example: ACL between modern microservices and legacy ERP

**Shared Kernel**:
- Small subset of model shared between contexts
- Requires tight coordination
- Use sparingly, creates coupling
- Example: Common customer identifier across contexts

**Open Host Service**:
- Context exposes well-defined API for multiple consumers
- Published interface with versioning
- Example: Product catalog API consumed by multiple applications

**Published Language**:
- Shared data format/schema used across contexts
- Industry standards or internal conventions
- Example: Using standard schemas like Open API for integration

### Document Integration Architecture Per Pattern

For each context relationship, document:
- Integration pattern used and rationale
- API/interface specifications
- Data transformation requirements
- Error handling approach
- SLA and performance requirements
- Security and authentication model

### Establish Team Ownership Boundaries

Map bounded contexts to team ownership:
- Each context owned by a specific team
- Team autonomy within their context
- Clear interfaces between teams
- Governance for cross-cutting concerns

→ Load: `frameworks/domain-driven-design.md` for detailed context mapping techniques
→ Output: Context map in Technical TOM document showing all bounded contexts and relationships

## Exit Criteria

Vision phase successfully complete when these criteria met:

- ✓ **Executive alignment on vision and TOM achieved**: Documented sign-off from executive sponsor and key stakeholders. Shared understanding of what we're building and why.

- ✓ **Architecture principles agreed and documented**: Clear, actionable principles that will guide all design decisions. Principles vetted with architecture review board.

- ✓ **Budget and timeline approved for next phase**: Funding secured for Validate or Construct phase. Resource commitments confirmed.

- ✓ **Risks identified, assessed, and deemed acceptable**: Comprehensive risk register with mitigation strategies. Executive acknowledgment of residual risks.

- ✓ **Next phase scope defined**: Clear scope for Validate phase (MVP hypothesis to test) OR Construct phase (solution to build). Success criteria established.

- ✓ **Governance model established**: Decision rights, review cadences, escalation procedures all documented and agreed. Steering committee formed.

- ✓ **Key stakeholders committed**: Business sponsors actively engaged. Technical leads supportive. End user representatives identified and willing.

- ✓ **Delivery team identified and onboarded**: Core team selected with right skills. Roles and responsibilities clear. Team briefed on vision and approach.

Do not proceed past Vision phase without these elements in place. Proceeding without alignment invites failure.

## Mermaid Patterns for Vision Phase

Essential diagram types for Vision phase documentation:

**Bounded Context Maps** (flowchart with subgraphs):
- Show all bounded contexts and their relationships
- Use DDD context mapping patterns
- Visualize team boundaries

**Capability Maps** (flowchart with hierarchical grouping):
- Business capability hierarchy
- Mapping to domains and bounded contexts
- Color-coding for maturity or priority

**System Landscape - Current State** (C4 Context):
- All existing systems and platforms
- User groups and external systems
- Current integration points

**System Landscape - Target State** (C4 Context):
- Target architecture with all platforms
- New integration patterns
- Rationalized application portfolio

**Before/After Architecture Comparisons** (flowchart with subgraphs):
- Side-by-side current vs. target
- Highlighting changes (retire, add, modify)
- Visual representation of transformation

**Value Stream Maps** (flowchart):
- End-to-end processes
- Touchpoints and handoffs
- Systems supporting each step
- Pain points and opportunities

**Gantt Charts for Roadmap**:
- Multi-year implementation timeline
- Phases and major milestones
- Dependencies and critical path

→ Load: `templates/mermaid-diagram-patterns.md` for diagram templates and branding

## Skills to Engage

Document creation skills for Vision phase deliverables:

- **pptx skill**: Vision strategy deck, roadmap presentation, executive briefings
- **docx skill**: TOM documents (functional + technical), gap analysis, maturity assessment, ADRs, governance documents
- **xlsx skill**: Business case financials, cost models, benefit tracking, maturity scoring
- **pdf skill**: Formal reports, executive summaries, Architecture Decision Records

## Success Patterns

Vision phase done well exhibits these characteristics:

**Executive Sponsor is Passionate Advocate**:
- Sponsor can articulate vision and business case clearly
- Actively champions project in leadership forums
- Dedicates time and political capital to initiative
- Removes organizational roadblocks

**Cross-Functional Stakeholders Aligned on Priorities**:
- Business and IT speaking same language
- Shared understanding of problems and solutions
- Agreement on priorities and tradeoffs
- Commitment to support implementation

**Technical Team Confident in Approach**:
- Architecture sound and achievable
- Risks understood with mitigation plans
- Technology choices well-reasoned
- Skills gap plan in place

**Business Case Compelling and Credible**:
- Numbers tell convincing story
- Assumptions reasonable and documented
- Sensitivity analysis addresses uncertainties
- Benefits realization plan clear

**Risks Understood and Mitigated**:
- Comprehensive risk identification
- Honest assessment of probability and impact
- Credible mitigation strategies
- Residual risks acknowledged

**Path to Value Clear and Achievable**:
- Roadmap realistic and sequenced logically
- Dependencies identified and managed
- Quick wins balanced with foundation building
- Milestones meaningful and measurable

**Organization Ready for Transformation**:
- Change management plan integrated from start
- Communication strategy engaging stakeholders
- Training and adoption plans considered
- Cultural barriers identified with approaches to address

## Common Pitfalls

Avoid these Vision phase anti-patterns:

**Skipping Stakeholder Alignment Activities**:
- Creating TOM in isolation without business input
- Assuming consensus exists without validating
- Presenting completed plan rather than co-creating
- **Impact**: Stakeholder resistance, scope creep, late-stage changes

**Creating Overly Detailed TOM Too Early**:
- Designing solution before validating assumptions
- Getting lost in technical minutiae
- Analysis paralysis preventing progress
- **Impact**: Wasted effort, rigidity, delayed start

**Underestimating Change Management Needs**:
- Focusing only on technology, ignoring people
- Assuming users will simply adapt
- Treating training as afterthought
- **Impact**: Poor adoption, value unrealized, user frustration

**Ignoring Organizational Culture Fit**:
- Proposing solutions misaligned with culture
- Underestimating resistance to change
- Copying patterns from different contexts
- **Impact**: Implementation failure, workarounds, shadow IT

**Building TOM Without Considering Constraints**:
- Designing ideal state ignoring budget realities
- Not factoring skills availability
- Overlooking regulatory limitations
- **Impact**: Unaffordable solution, execution failure

**Neglecting Quick Wins in Roadmap**:
- Only planning long-term foundational work
- No early value demonstration
- Losing momentum and support
- **Impact**: Funding cut, stakeholder disengagement

**Failing to Establish Governance Early**:
- Unclear decision rights
- No escalation paths
- Ambiguous accountability
- **Impact**: Delays, conflicts, poor decisions

Remember: Vision phase sets the foundation. Get it right, and everything that follows becomes easier. Get it wrong, and even the best execution can't save the initiative.

---

*This phase establishes strategic direction. For tactical execution, proceed to Validate or Construct phase as appropriate.*
