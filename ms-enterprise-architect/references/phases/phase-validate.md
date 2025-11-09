---
category: phase
phase_name: validate
loading_priority: 2
tokens_estimate: 566
dependencies: [phase-vision, frameworks/azure-waf-reliability, frameworks/azure-waf-security, frameworks/powerplatform-waf-reliability, frameworks/powerplatform-waf-security, templates/validate-phase-templates, templates/mermaid-diagram-patterns]
keywords: [validate-phase, mvp-scope, proof-of-concept, pilot-approach, hypothesis-framework, implementation-approach, validation-execution, pivot-persevere-decision, deliverables, exit-criteria, well-architected-framework]
version: 1.0
last_updated: 2025-11-09
---

# Validate Phase

## Overview

**Duration**: 4-8 weeks

**Focus**: MVP build, hypothesis testing, value proof through evidence-based validation

**Two Validation Approaches**:
- **Proof of Concept (POC)**: Technical feasibility validation in demo environment
- **Pilot**: User adoption and business value validation with real users in production-like environment

**Expected Outcomes**:
- Technical feasibility definitively confirmed or disproven
- User adoption potential demonstrated with real evidence
- Business case assumptions validated or adjusted
- Refined requirements for Construct phase
- Clear pivot/persevere/stop decision with supporting data
- Stakeholder confidence in approach based on tangible proof

The Validate phase is your insurance policy against expensive mistakes. By building a Minimum Viable Product (MVP) and testing critical assumptions with real users and real data, you gain evidence-based confidence before committing to full-scale implementation. This phase can save millions by identifying fatal flaws early or validating that your approach will deliver the expected value.

## Objectives

The Validate phase de-risks the investment through empirical testing:

### Validate Technical Feasibility
Prove that proposed integrations work, performance requirements are achievable, and the technology stack can deliver required capabilities. Test the hardest technical challenges first to fail fast if the approach won't work.

### Demonstrate User Adoption Potential
Engage real users with working software to validate that the solution is usable, valuable, and will be adopted. User enthusiasm in pilot is the best predictor of full-scale adoption success.

### Prove Business Value Achievability
Test business case assumptions with measurable outcomes. Can users really complete tasks 40% faster? Will the solution actually reduce costs by projected amounts? Validate or adjust assumptions based on evidence.

### Refine Requirements for Construct
Learn from MVP implementation what requirements were wrong, incomplete, or missing. Discover edge cases and integration complexities. Use these learnings to refine scope and requirements for Construct phase.

### Make Pivot/Persevere Decision
Based on validation results, make evidence-based decision:
- **Persevere**: Hypotheses validated, proceed to full implementation
- **Pivot**: Partial validation, adjust approach and re-test
- **Stop**: Hypotheses disproven, halt project and save investment

## MVP Scope Definition

Choosing the right validation approach is critical to learning effectively.

### Proof of Concept Approach

**Characteristics**:
- **Demo Environment**: Separate from production, controlled test environment
- **Key Integrations Only**: Build just enough integration to test critical assumptions
- **Controlled Test Scenarios**: Defined test cases with known data
- **Technical Validation Focus**: Primary goal is proving technical feasibility
- **Limited User Involvement**: Technical team or very small user group

**When to Use POC**:
- **High Technical Risk**: Unproven integration patterns or new technologies
- **Complex Integration Scenarios**: Need to validate system connectivity before broader rollout
- **Exploratory Phase**: Comparing multiple technical approaches
- **Third-Party System Integration**: Testing integration with external systems before commitment
- **Compliance Validation**: Proving security or compliance requirements can be met

**POC Success Criteria**:
- Integration successfully exchanges data
- Performance meets defined thresholds
- Security controls function as designed
- Compliance requirements achievable
- Technical approach proven viable

### Pilot Approach

**Characteristics**:
- **Real Users**: Actual end users performing real work
- **Limited Scope**: Single department, process, or geographic location
- **Production or Production-Like Environment**: Environment representing production conditions
- **Optimal Scale for Learning**: Large enough to surface real issues, small enough to manage
- **Business Value Focus**: Measuring actual business outcomes and user adoption

**When to Use Pilot**:
- **Clear Technical Path**: Technology proven, need to validate adoption and value
- **User Adoption Risk**: Need to demonstrate solution works for real users
- **Production-Ready Validation**: Confirming solution is ready for broader deployment
- **Change Management Testing**: Validating training and support approaches
- **Business Case Validation**: Proving projected benefits are achievable

**Pilot Success Criteria**:
- Users successfully complete business processes
- Adoption metrics meet targets
- User satisfaction high
- Business benefits measurable
- Support model workable

### Selection Criteria

Choose between POC and Pilot based on:

**Risk Profile**:
- High technical risk → POC first, then potentially Pilot
- High adoption risk → Pilot
- Both risks → POC followed by Pilot

**User Involvement Feasibility**:
- Users available and willing → Pilot feasible
- Users unavailable or reluctant → Start with POC

**Timeline Constraints**:
- POC typically faster (2-4 weeks)
- Pilot requires longer (6-8 weeks for meaningful results)

**Budget Available**:
- Limited budget → Focused POC
- Adequate budget → Comprehensive Pilot

**Learning Objectives**:
- Need technical proof → POC
- Need adoption/value proof → Pilot
- Need both → Sequential POC then Pilot

## Hypothesis Framework

Structure validation around testable hypotheses to ensure you're learning what matters.

### Hypothesis Types

#### Technical Feasibility Hypotheses

**Structure**: "We can integrate System X with System Y achieving \<SLA\>"

**Example**: "We can integrate Dynamics 365 with legacy ERP system achieving real-time synchronization with <1 second latency and 99.9% reliability"

**Test Approach**:
- Build integration using proposed architecture
- Execute high-volume test scenarios
- Measure performance, latency, and error rates
- Test failure scenarios and recovery

**Success Criteria**:
- SLA met under load testing
- No data loss or corruption
- Error rate below threshold (e.g., <0.1%)
- Recovery from failures automatic

**Risk if Hypothesis Fails**:
- Integration complexity higher than expected
- May require architecture changes
- Timeline and cost impacts
- Alternative integration pattern needed

#### User Adoption Hypotheses

**Structure**: "Users will complete Task A X% faster with new solution"

**Example**: "Customer service agents will resolve customer inquiries 40% faster using unified interface compared to current multi-system process"

**Test Approach**:
- Baseline current state task completion times
- Train pilot users on new solution
- Measure task completion times with new solution
- Collect user feedback and satisfaction
- Observe user behavior and adoption patterns

**Success Criteria**:
- Measurable productivity improvement (40% time savings)
- Positive user sentiment (4+ out of 5 satisfaction)
- Users prefer new solution to current approach
- Adoption without excessive support needed

**Risk if Hypothesis Fails**:
- User resistance to change
- Workflow incompatibility with real work
- Training approach inadequate
- Solution too complex for target users

#### Business Value Hypotheses

**Structure**: "Solution will reduce costs by $X or increase revenue by $Y"

**Example**: "Automated approval workflow will reduce approval cycle time from 5 days to 1 day, enabling $2M in working capital reduction"

**Test Approach**:
- Baseline current process metrics
- Implement workflow in pilot scope
- Measure cycle time improvement
- Calculate financial impact
- Project to full-scale deployment

**Success Criteria**:
- Cycle time reduction achieved (5 days → 1 day)
- Financial benefits quantified and defensible
- Benefits scale to full deployment
- No offsetting negative impacts

**Risk if Hypothesis Fails**:
- Benefits overstated in business case
- Costs underestimated
- Solution doesn't scale
- Business case requires adjustment

### Hypothesis Documentation

For each hypothesis, document:

**Assumption**: What we believe to be true
- Example: "Users will find the unified interface more intuitive than current fragmented systems"

**Test**: How we'll validate it
- Example: "10 customer service agents will use the new interface for 2 weeks while we measure task completion times and collect satisfaction feedback"

**Success Criteria**: Measurable outcomes that validate hypothesis
- Example: "Average task completion time reduced by 30%+, user satisfaction >4/5, 80%+ of users prefer new interface"

**Timeframe**: When we'll know
- Example: "End of week 6 in Validate phase"

**Risk**: What happens if hypothesis fails
- Example: "May need to redesign interface, add training, or simplify workflows"

**Mitigation**: How to address failure
- Example: "UX designer on standby to iterate interface based on feedback, additional training materials prepared"

→ Use template: `templates/validate-phase-templates.md` (Hypothesis Test Plan)

## Implementation Approach

Build just enough to test hypotheses rigorously.

### Agile MVP Development

**2-Week Sprints**:
- Sprint 1-2: Infrastructure setup, core integration
- Sprint 3-4: MVP features, user interface
- Sprint 5-6: Pilot execution, refinement
- Sprint 7-8: Testing, validation, analysis

**Prioritize Highest-Risk Assumptions**:
- Test hardest technical challenges first
- Validate biggest adoption risks early
- Fail fast if approach won't work
- Build confidence incrementally

**Build Minimum Necessary to Test**:
- No gold-plating or nice-to-haves
- Focus on proving/disproving hypotheses
- Minimal UI sufficient for testing
- Prototype quality acceptable if learning objective met

**Continuous User Engagement**:
- Weekly demos to pilot users
- Rapid feedback incorporation
- User input on priorities
- Co-design approach for usability

**Rapid Iteration Based on Feedback**:
- Daily standups to identify blockers
- Quick pivots when learning suggests change
- Timeboxed experiments
- Embrace learning through iteration

### Integration Strategy

**Identify Critical Integration Points**:
- Focus on integrations that prove/disprove technical feasibility
- Prioritize integrations with highest risk or complexity
- Consider volume and performance requirements

**Build Anti-Corruption Layers Where Needed**:
- Isolate MVP from legacy system changes
- Translate between domain models
- Protect against upstream system volatility
- Enable independent evolution

**Mock External Systems if Necessary**:
- Create stubs for systems not available in test environment
- Simulate realistic responses and latencies
- Generate representative test data
- Validate assumptions about external system behavior

**Focus on Data Quality and Flow**:
- Validate data transformation logic
- Test data quality rules
- Verify referential integrity
- Confirm data synchronization patterns

### Environment Setup

**Separate from Production**:
- Dedicated test/pilot environment
- Isolated from production users and data
- Production-like configuration
- Ability to reset and retry

**Representative Data Sets**:
- Realistic data volumes
- Appropriate data diversity
- Edge cases and exceptions
- PII-scrubbed or synthetic where required

**User Access Provisioning**:
- Pilot users have necessary permissions
- Authentication configured
- Access logging enabled
- Security controls active

**Monitoring and Instrumentation**:
- Performance monitoring
- Error tracking and logging
- User activity analytics
- System health dashboards

## Validation Execution

Collect both quantitative and qualitative evidence.

### Quantitative Metrics

**Performance Measurements**:
- Response times and latency
- Throughput and concurrent users
- System resource utilization
- Error rates and availability

**Time Savings**:
- Task completion time before/after
- Process cycle time reduction
- Wait time elimination
- Productivity gains per user

**Error Rates**:
- User errors in completing tasks
- System errors and failures
- Data quality issues
- Integration failures

**Cost Reduction**:
- Labor hours saved
- License cost reduction
- Infrastructure cost changes
- Support burden impact

**Usage Statistics**:
- Active users and adoption rate
- Feature usage patterns
- Session duration and frequency
- User engagement metrics

### Qualitative Feedback

**User Interviews**:
- One-on-one conversations with pilot users
- Deep understanding of experience
- Uncover issues not apparent in metrics
- Understand context and workarounds

**Usability Testing**:
- Observation of users performing tasks
- Think-aloud protocols
- Identify UI/UX friction points
- Discover unmet needs

**Stakeholder Feedback Sessions**:
- Regular check-ins with business sponsors
- Perception of progress and value
- Political and organizational insights
- Support for next phase

**Survey Instruments**:
- User satisfaction surveys
- Net Promoter Score (NPS)
- System Usability Scale (SUS)
- Custom feedback forms

**Observational Studies**:
- Watch users in their environment
- Understand actual workflows
- Identify gap between intended and actual use
- Discover workarounds and pain points

### Continuous Documentation

**Daily Learnings Log**:
- What we learned today
- Decisions made and rationale
- Experiments conducted
- Questions raised

**Issue Tracking**:
- Bugs and defects
- User-reported problems
- Integration issues
- Performance bottlenecks

**Decision Register**:
- Key decisions during validation
- Options considered
- Rationale for choice
- Who decided and when

**Assumption Validation Tracking**:
- Hypothesis → Test → Result
- Assumptions validated or invalidated
- Impact on business case
- Implications for Construct phase

## Value Proof Requirements

Define what constitutes sufficient evidence to proceed. You need compelling proof in at least two of three categories:

### Qualitative Evidence

Indicators of likely adoption success:

- **High User Satisfaction Scores**: Users rate solution 4+ out of 5
- **Stakeholder Confidence Expressed**: Sponsors enthusiastic and supportive
- **Enthusiastic User Adoption**: Users eager to use and recommend
- **Positive Feedback on Usability**: Minimal training needed, intuitive interface
- **Preference Over Current State**: Users don't want to go back

### Business Case Validation

Financial assumptions proven:

- **Projected ROI Confirmed Achievable**: Pilot results support full-scale ROI projections
- **Cost Estimates Accurate**: No major cost surprises discovered
- **Benefit Assumptions Proven**: Time savings, cost reductions measured in pilot
- **Timeline Realistic**: Implementation velocity in pilot scales to full deployment
- **Risks Manageable**: No deal-breaker risks discovered

### Technical Validation

Solution architecture proven:

- **Integration Complexity Understood**: Integrations work, effort to scale is clear
- **Performance Acceptable**: Response times and throughput meet requirements
- **Security Controls Effective**: Authentication, authorization, data protection work
- **Risks Mitigated or Manageable**: Technical risks identified with mitigation plans
- **Scalability Path Clear**: Approach scales to full user base and data volumes

## Pivot/Persevere Decision

Based on validation results, make clear decision on path forward.

### Persevere Scenario

**Indicators**:
- All or most hypotheses validated
- User acceptance strong with high satisfaction
- Technical approach sound with manageable risks
- Business case confirmed with measured results
- Stakeholders eager to proceed

**Decision**: Proceed to Construct phase with confidence
- Refine scope based on learnings
- Update requirements with insights
- Adjust timeline and budget if needed
- Maintain momentum with quick transition

### Pivot Scenario

**Indicators**:
- Hypotheses partially validated
- Some aspects work well, others need adjustment
- User feedback suggests design changes
- Business case needs scope or timeline revision
- Technical approach needs refinement

**Decision**: Adjust approach and consider re-testing
- Redesign based on learnings
- Re-scope to focus on validated elements
- Return to Vision for fundamental rethink OR
- Adjust MVP and run another validation sprint
- Update business case with new assumptions

### Stop Scenario

**Indicators**:
- Hypotheses disproven
- Users reject solution or adoption very poor
- Fatal technical flaws discovered
- Business case invalidated (costs too high, benefits unachievable)
- Stakeholders lose confidence

**Decision**: Halt project and save investment
- Document learnings thoroughly
- Understand why assumptions were wrong
- Consider alternative approaches
- Preserve option to revisit later
- Celebrate learning and avoiding bigger failure

**The courage to stop is as important as the commitment to proceed.** Validate phase is designed to enable this decision before large investments are made.

## Deliverable Package

Complete set of Validate phase outputs:

- **MVP Implementation** (configured environment)
  - Working software demonstrating key capabilities
  - Configured integrations
  - Test data and scenarios
  - Pilot environment ready for users

- **Hypothesis Test Plan** (→ docx skill)
  - All hypotheses documented
  - Test approach for each
  - Success criteria defined
  - Schedule and responsibilities

- **Validation Report** (→ docx/pdf skill)
  - Hypothesis → Test → Result → Decision for each
  - Quantitative metrics with analysis
  - Qualitative feedback summary
  - Lessons learned
  - Pivot/persevere recommendation with supporting evidence

- **User Feedback Summary** (→ docx skill)
  - Pilot user interviews and surveys
  - Usability testing results
  - User satisfaction scores
  - Feature requests and pain points
  - Adoption insights

- **Lessons Learned Document** (→ docx skill)
  - What worked well
  - What didn't work
  - Surprises and discoveries
  - Implications for Construct phase
  - Process improvements for next phase

- **Refined Requirements for Construct** (→ docx skill)
  - Updated based on validation learnings
  - Edge cases discovered
  - Integration complexity adjustments
  - User experience refinements
  - Scope adjustments

- **Pivot/Persevere Recommendation** (→ pptx skill)
  - Executive presentation
  - Evidence summary
  - Clear recommendation
  - Next steps and investment required
  - Risk assessment

- **Updated Architecture if Needed** (→ docx skill + Mermaid diagrams)
  - Architecture adjustments based on learnings
  - Updated integration designs
  - Performance optimization approaches
  - Revised ADRs

## Well-Architected Framework Application

Use Validate phase to test WAF assumptions defined in Vision phase.

### Reliability Testing

Test reliability assumptions:

**Questions to Answer**:
- Can we achieve RTO/RPO targets?
- Do failover mechanisms work as designed?
- Is redundancy sufficient for availability requirements?
- How quickly can system recover from failures?
- Are backup and restore procedures effective?

**Validation Approach**:
- Test failure scenarios (simulate outages)
- Measure recovery time
- Validate data consistency after recovery
- Test monitoring and alerting
- Confirm health checks work

→ Load: `frameworks/azure-waf-reliability.md` or `frameworks/powerplatform-waf-reliability.md`

### Security Validation

Test security controls:

**Questions to Answer**:
- Do authentication and authorization controls work correctly?
- Is data encrypted in transit and at rest?
- Can we achieve compliance requirements?
- Do threat detection mechanisms work?
- Are security logs captured appropriately?

**Validation Approach**:
- Penetration testing
- Security control testing
- Compliance verification
- Access control validation
- Audit log review

→ Load: `frameworks/azure-waf-security.md` or `frameworks/powerplatform-waf-security.md`

### Operational Testing

Test operational approach:

**Questions to Answer**:
- Is deployment automation viable?
- Can we monitor effectively?
- Is support model feasible?
- Do runbooks work as intended?
- Can operations team manage solution?

**Validation Approach**:
- Execute deployment automation
- Validate monitoring dashboards
- Test alerting and escalation
- Run through operational procedures
- Conduct knowledge transfer

→ Load: `frameworks/azure-waf-operational-excellence.md` or `frameworks/powerplatform-waf-operational-excellence.md`

### Performance Validation

Test performance assumptions:

**Questions to Answer**:
- Do we meet response time targets?
- Can the solution scale to required load?
- Are caching strategies effective?
- What are performance bottlenecks?
- How does system perform under stress?

**Validation Approach**:
- Load testing with realistic scenarios
- Stress testing beyond expected load
- Measure response times
- Monitor resource utilization
- Identify and address bottlenecks

→ Load: `frameworks/azure-waf-performance-efficiency.md` or `frameworks/powerplatform-waf-performance-efficiency.md`

### Experience Testing (Power Platform)

Test user experience:

**Questions to Answer**:
- Is the solution intuitive for target users?
- Do users complete tasks efficiently?
- Are accessibility requirements met?
- Is training burden acceptable?
- Do users enjoy using the solution?

**Validation Approach**:
- Usability testing with real users
- Accessibility testing (WCAG compliance)
- Task completion time measurement
- User satisfaction surveys
- Training effectiveness assessment

→ Load: `frameworks/powerplatform-waf-experience-optimization.md`

## Exit Criteria

Validate phase successfully complete when these criteria met:

- ✓ **Technical feasibility confirmed through working MVP**: Integrations work, performance acceptable, security controls effective

- ✓ **User acceptance demonstrated OR business value path proven**: Either pilot users enthusiastically adopt OR business case validated even if some user resistance

- ✓ **Hypotheses validated or adjusted strategy agreed**: Clear understanding of what works and what doesn't, with path forward

- ✓ **Refined scope and requirements documented**: Learnings incorporated into updated requirements for Construct

- ✓ **Stakeholder approval to proceed to Construct**: Sponsor commitment to next phase based on validation results

- ✓ **Budget and timeline confirmed for full build**: Funding secured, resources committed, timeline agreed

- ✓ **Lessons learned incorporated into plan**: Validation insights reflected in Construct phase approach

Do not skip Validate phase for high-risk initiatives. The investment in validation saves multiples in avoided implementation failure.

## Mermaid Patterns for Validate Phase

Essential diagram types for Validate phase documentation:

**Sequence Diagrams for Tested Integration Flows**:
- Show actual integration patterns implemented
- Document data flows validated
- Illustrate error handling tested
- Visualize authentication/authorization

**State Diagrams for Validated Workflows**:
- Business process flows tested in pilot
- State transitions and decision points
- Exception handling paths
- User journey through system

**Updated C4 Container Diagrams Reflecting MVP**:
- MVP architecture as built
- Integration points implemented
- Technology choices validated
- Differences from original design

**Test Result Visualizations**:
- Performance test results over time
- User satisfaction trends
- Adoption metrics
- Before/after comparisons

→ Load: `templates/mermaid-diagram-patterns.md`

## Skills to Engage

Document creation skills for Validate phase deliverables:

- **docx skill**: Hypothesis test plan, validation report, user feedback summary, lessons learned, refined requirements
- **pptx skill**: Pivot/persevere presentation, stakeholder updates, pilot results summary
- **pdf skill**: Formal validation report for governance, compliance documentation

## Success Patterns

Validate phase done well exhibits these characteristics:

**Clear Evidence-Based Decision Made**:
- Decision supported by data, not opinions
- Quantitative and qualitative evidence
- Honest assessment of results
- Courage to pivot or stop if needed

**Users Excited About Solution**:
- Pilot users become advocates
- Enthusiasm spreads to broader organization
- Users eager for full deployment
- Positive word-of-mouth

**Technical Risks Understood and Mitigated**:
- No surprises in Construct phase
- Integration complexity clear
- Performance bottlenecks identified and addressed
- Architecture proven sound

**Business Case Validated with Data**:
- Assumptions tested, not assumed
- Benefits measured in pilot
- Costs refined based on actuals
- ROI projections credible

**Team Confident in Approach**:
- Technical team knows solution works
- Business team knows users will adopt
- Stakeholders trust the plan
- Momentum builds for Construct

**Stakeholders Aligned on Next Steps**:
- Clear agreement on proceed/pivot/stop
- Scope adjustments agreed
- Timeline and budget confirmed
- Governance for next phase established

---

*This phase validates assumptions through empirical testing. With validation complete, proceed to Construct phase with evidence-based confidence.*
