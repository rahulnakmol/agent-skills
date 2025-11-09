---
category: phase
phase_name: overview
loading_priority: 2
tokens_estimate: 200
dependencies: []
keywords: [delivery-methodology, phase-selection, decision-tree, phase-interdependencies, phase-duration, success-patterns, anti-patterns]
version: 1.0
last_updated: 2025-11-09
---

# Delivery Methodology Overview

## 5-Phase Approach

**Complete Lifecycle**: Vision → Validate → Construct → Deploy → Evolve

**Phase Optionality**: Vision and Validate can be skipped based on client maturity and project context.

## Phase Selection Decision Tree

### Start at Vision When:
- **Greenfield projects**: No existing systems or strategy
- **Low organizational maturity**: Limited cloud/digital experience
- **Strategic ambiguity**: Unclear business objectives or priorities
- **Transformation initiatives**: Fundamental business model changes
- **Complex multi-system environments**: Need comprehensive architecture design
- **No existing TOM**: Target Operating Model required
- **Stakeholder misalignment**: Need executive consensus building

**Typical engagements**: Digital transformation programs, enterprise modernization, strategic advisory

### Start at Validate When:
- **Strategy exists but unproven**: Business case defined but assumptions untested
- **Technology selection uncertainty**: Multiple solution options to evaluate
- **Risk mitigation required**: High-cost investment needing proof points
- **Stakeholder skepticism**: Need tangible demonstration of value
- **Integration complexity unknown**: System connectivity requires validation
- **User adoption concerns**: Need pilot to confirm usability

**Typical engagements**: Pilot programs, proof of concept projects, hypothesis testing initiatives

### Start at Construct When:
- **Clear requirements**: Well-documented functional and technical specifications
- **Mature organization**: Established governance and delivery practices
- **Validated approach**: POC or pilot already completed successfully
- **TOM already defined**: Target architecture documented and approved
- **Low technical risk**: Proven integration patterns and technologies
- **Immediate delivery focus**: Time-to-market critical, strategy settled

**Typical engagements**: Implementation projects, system replacements with defined scope, build-to-spec initiatives

### Start at Deploy When:
- **Solution already built**: Development complete, ready for production
- **Migration execution**: Moving from test/staging to production
- **Phased rollout**: Piloted successfully, expanding to broader user base

**Typical engagements**: Production cutover projects, enterprise rollouts, user migration programs

### Start at Evolve When:
- **System live in production**: Already operational with users
- **Optimization needed**: Performance, adoption, or value realization gaps
- **Continuous improvement**: Ongoing enhancement program
- **Feature expansion**: Adding capabilities to existing platform

**Typical engagements**: Managed services, adoption acceleration, continuous improvement programs

## Phase Interdependencies

### Vision → Validate
**Handoff artifacts**:
- Target Operating Model (functional + technical)
- Hypothesis list for validation
- MVP scope definition
- Success criteria
- Risk register

**Gate criteria**:
- Executive alignment achieved
- Architecture principles agreed
- Budget approved for Validate phase
- Hypothesis testable within MVP scope

### Validate → Construct
**Handoff artifacts**:
- Validated hypothesis results
- MVP lessons learned
- Refined requirements
- Updated architecture (if pivoted)
- Confirmed business case

**Gate criteria**:
- Technical feasibility confirmed
- User acceptance demonstrated OR business value path proven
- Stakeholder approval for full build
- Scope finalized based on validation learnings

### Construct → Deploy
**Handoff artifacts**:
- Solution architecture document
- Technical specifications
- Configured environments
- Test reports and UAT sign-off
- Training materials
- Operational runbooks

**Gate criteria**:
- UAT sign-off obtained
- Production readiness confirmed
- Cutover plan approved
- Support model established
- Go/no-go decision made

### Deploy → Evolve
**Handoff artifacts**:
- Production deployment confirmation
- Initial adoption metrics
- Known issues log
- Support ticket trends
- User feedback

**Gate criteria**:
- System stable in production
- Support team operational
- Adoption tracking in place
- Business value measurement framework active

## Phase Duration Guidelines

### Vision Phase
**Typical Duration**: 8-12 weeks

**Factors extending timeline**:
- Complex multi-domain environments
- Large stakeholder groups requiring alignment
- Regulatory/compliance requirements
- Significant maturity gaps
- Organizational change resistance

### Validate Phase
**Typical Duration**: 4-8 weeks

**Factors extending timeline**:
- Complex integration scenarios
- Multiple hypotheses to test
- Extensive user testing requirements
- Data migration complexity
- Custom development in MVP

### Construct Phase
**Typical Duration**: 8-12 weeks (single capability)

**Factors extending timeline**:
- Large scope or multiple capabilities
- Complex integrations
- Significant customization
- Data migration volumes
- Regulatory requirements

### Deploy Phase
**Typical Duration**: 12-16 weeks (enterprise-wide)

**Factors extending timeline**:
- Phased rollout across geographies
- Extensive user training requirements
- Complex data migration
- Legacy system decommissioning
- Change management challenges

### Evolve Phase
**Duration**: Ongoing (continuous)

**Cadence**:
- Weekly operational reviews
- Monthly steering committees
- Quarterly business reviews
- Annual strategic planning

## Success Patterns by Phase

### Vision Success Indicators
✓ Executive sponsor fully engaged
✓ Cross-functional stakeholder alignment
✓ Clear, measurable business objectives
✓ Realistic, achievable TOM
✓ Well-understood risks and mitigations
✓ Funded roadmap to next phase

### Validate Success Indicators
✓ Hypotheses definitively proven or disproven
✓ User enthusiasm and engagement
✓ Technical feasibility confirmed
✓ Business case validated with evidence
✓ Clear pivot/persevere decision made
✓ Refined scope achievable within budget/timeline

### Construct Success Indicators
✓ On-time, on-budget delivery
✓ Technical excellence in implementation
✓ Successful UAT with minimal defects
✓ Comprehensive documentation
✓ Team prepared for Deploy phase
✓ Stakeholder confidence maintained

### Deploy Success Indicators
✓ Smooth cutover with minimal disruption
✓ Rapid issue resolution
✓ User adoption tracking positively
✓ Business processes operating
✓ Support team effective
✓ Initial business value realized

### Evolve Success Indicators
✓ Adoption rate increasing
✓ Business value targets achieved or exceeded
✓ User satisfaction high
✓ System performance stable
✓ Innovation pipeline active
✓ Continuous improvement embedded

## Anti-Patterns to Avoid

### Skipping Vision When Needed
**Risk**: Building wrong solution, stakeholder misalignment, scope creep, cost overruns

### Skipping Validate for High-Risk Initiatives
**Risk**: Expensive failures, technical dead-ends, user rejection, credibility damage

### Starting Construct Without Clear Requirements
**Risk**: Rework, budget overruns, timeline delays, stakeholder frustration

### Rushing Deploy Phase
**Risk**: Production issues, user disruption, data quality problems, support overwhelm

### Neglecting Evolve Phase
**Risk**: Value unrealized, adoption stalls, technical debt accumulates, competitive disadvantage

## Phase-Specific Reference Files

For detailed guidance on each phase:
- **Vision**: Load `phase-vision.md`
- **Validate**: Load `phase-validate.md`
- **Construct**: Load `phase-construct.md`
- **Deploy**: Load `phase-deploy.md`
- **Evolve**: Load `phase-evolve.md`

## Integration with Well-Architected Framework

**Vision Phase**: Apply WAF as aspirational framework
- Define target state for each pillar
- Document architectural principles
- Identify governance requirements

**Validate Phase**: Test WAF assumptions
- Can we achieve reliability targets?
- Do security controls work as designed?
- Is operational model viable?

**Construct Phase**: Implement WAF patterns
- Build according to pillar best practices
- Make explicit tradeoff decisions
- Document architecture decisions (ADRs)

**Deploy Phase**: Validate WAF compliance
- Confirm production readiness against pillars
- Execute well-architected review
- Adjust as needed before go-live

**Evolve Phase**: Optimize WAF alignment
- Continuous improvement against pillars
- Regular well-architected assessments
- Evolve architecture as platform matures

---

*Use this overview to guide phase selection and transition decisions. Detailed execution guidance available in phase-specific reference files.*
