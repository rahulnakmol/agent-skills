# Deploy Phase

## Overview

**Duration**: 12-16 weeks for enterprise-wide rollout (can be shorter for departmental deployments or longer for complex phased rollouts across multiple geographies)

**Focus**: Production deployment execution, user migration, data cutover, legacy system decommissioning, production stabilization, and transition to support

**Critical Success Factors**: Meticulous planning, disciplined execution, proactive communication, rapid issue resolution, and strong change management

The Deploy phase is where preparation meets execution. After months of planning, design, and development, this is the moment of truth—taking the solution live with real users, real data, and real business processes. Success requires careful orchestration, clear communication, disciplined execution, and readiness to respond to issues quickly.

This is the most visible phase. Business disruption must be minimized, user confidence must be maintained, and the promise of the new solution must be delivered. There are no second chances to make a first impression with production deployment.

## Objectives

The Deploy phase transitions the solution from project to operational reality:

### Execute Production Deployment
Deploy the solution to production environment following tested deployment automation. Execute cutover plan with precision, monitoring closely for issues, and responding quickly to problems. Minimize business disruption through careful timing and phased approach.

### Migrate Users to New Solution
Onboard users systematically through training, communication, and hands-on support. Migrate users in planned waves, ensuring each wave is stable before proceeding. Provide hypercare support during initial adoption period.

### Decommission Legacy Systems
Phase out old systems in coordinated manner. Ensure all data migrated, all processes transitioned, and all users moved before decommissioning. Archive historical data appropriately. Reclaim licensing and infrastructure costs.

### Stabilize Production Environment
Monitor system health closely during initial weeks. Resolve issues rapidly to maintain user confidence. Tune performance, adjust capacity, and optimize configuration based on production behavior. Achieve steady-state stability.

### Transfer to Support Team
Transition solution from project team to operational support. Complete knowledge transfer, verify runbooks, confirm monitoring and alerting, establish escalation procedures, and ensure support team is fully capable and confident.

## Key Activities

### Environment Provisioning

Prepare production environment with production-grade infrastructure:

**Production Environment Setup**:
- Deploy infrastructure using Infrastructure as Code
- Configure networking, security groups, firewalls
- Establish connectivity to on-premises systems
- Configure backup and disaster recovery
- Implement monitoring and alerting
- Set up logging and diagnostics
- Validate environment against production readiness checklist

**Production-Grade Configuration**:
- High availability and redundancy
- Production security controls
- Production performance capacity
- Production data retention policies
- Production backup schedules
- Production monitoring thresholds

**Environment Validation**:
- Smoke testing in production environment
- Security validation
- Performance baseline
- Integration connectivity verification
- Monitoring and alerting confirmation

### Solution Development

Final configuration and validation in production:

**Final Production Configuration**:
- Production-specific settings
- Production URLs and endpoints
- Production connection strings (from Key Vault)
- Feature flags for progressive rollout
- Production certificates and secrets

**Production Deployment Rehearsal**:
- Practice deployment in production-like environment
- Validate deployment automation
- Confirm rollback procedures
- Time deployment activities
- Identify potential issues

**Production Smoke Testing**:
- Basic functionality verification
- Critical path testing
- Integration verification
- Authentication validation
- Data access confirmation

### Data Migration

Execute comprehensive data migration plan:

**Data Quality Validation**:
- Cleanse source data before migration
- Validate data completeness
- Check referential integrity
- Verify data formats
- Test data transformations

**Migration Scripts Execution**:
- Run migration in phases (if possible)
- Monitor migration progress
- Log all migration activities
- Handle migration errors
- Validate migration success

**Data Reconciliation**:
- Compare source and target record counts
- Validate critical data elements
- Check data relationships
- Verify calculated fields
- Confirm business rules applied

**Cutover Data Synchronization**:
- Final incremental data sync during cutover window
- Delta migration of changes since main migration
- Real-time or near-real-time sync
- Validation of final sync
- Freeze legacy system at cutover point

### Integration Implementation

Activate production integrations:

**Production Integration Configuration**:
- Configure production endpoints
- Activate API connections
- Enable message queues
- Start scheduled jobs
- Validate authentication

**Integration Testing in Production**:
- Test all integration points
- Verify data flow
- Validate error handling
- Confirm monitoring
- Check performance

**Integration Monitoring**:
- Monitor integration health
- Track message volumes
- Alert on failures
- Log all transactions
- Dashboard for real-time visibility

### User Acceptance Testing

Final validation in production:

**Production UAT**:
- Business users test in production
- Validate with production data
- Confirm business processes work
- Verify reports and dashboards
- Sign-off for go-live

**UAT Defect Resolution**:
- Triage issues by severity
- Fix critical and high-priority defects
- Defer low-priority items to backlog
- Retest after fixes
- Obtain final UAT approval

### Training

Prepare users for go-live:

**User Training Sessions**:
- Role-based training delivery
- Hands-on practice exercises
- Q&A and troubleshooting
- Training materials distribution
- Training effectiveness assessment

**Administrator Training**:
- System administration procedures
- Configuration management
- User provisioning and support
- Monitoring and maintenance
- Incident response

**Train-the-Trainer**:
- Prepare internal trainers
- Enable peer support
- Build internal capability
- Reduce dependency on external resources

**Just-in-Time Training**:
- Training delivered close to go-live
- Refresher sessions
- Targeted training for specific roles
- Video tutorials for on-demand learning

### Cutover Execution

Execute transition from old to new system:

**Go/No-Go Decision**:
- Review readiness criteria
- Assess risks and mitigation
- Confirm stakeholder agreement
- Decision meeting with executive sponsor
- Document decision and rationale

**Cutover Checklist**:
- All tasks identified and assigned
- Dependencies mapped
- Timeline with durations
- Rollback triggers defined
- Communication plan ready

**Legacy System Freeze**:
- Prevent new data entry in old system
- Communicate freeze to users
- Archive current state
- Prepare for decommissioning

**Final Data Synchronization**:
- Execute final delta migration
- Validate data completeness
- Reconcile critical records
- Confirm data integrity

**Production Activation**:
- Enable production system
- Open access to users
- Activate integrations
- Start monitoring
- Announce go-live

**Smoke Testing**:
- Immediate validation of critical functions
- Verify core processes work
- Check integrations flowing
- Confirm users can access
- Validate data is correct

**Hypercare Period**:
- Intensive support for first 1-2 weeks
- Extended hours coverage
- Rapid response to issues
- Daily triage meetings
- Frequent communication to stakeholders

### Deployment Planning

Strategic approach to minimize risk:

**Phased Rollout Strategy**:
- Deploy to pilot group first
- Stabilize before expanding
- Progressive wave deployments
- Control blast radius of issues
- Build confidence incrementally

**Geographic/Departmental Sequencing**:
- Logical grouping of users
- Time zone considerations
- Business criticality
- Change readiness
- Support coverage

**Rollback Procedures**:
- Clear rollback triggers
- Documented rollback steps
- Tested rollback procedures
- Communication plan for rollback
- Data synchronization in reverse

**Communication Plans**:
- Stakeholder communication schedule
- User communication templates
- Status updates and dashboards
- Issue escalation communication
- Success celebration

→ Use Mermaid: Gantt chart for deployment timeline

## Deliverable Package

Complete set of Deploy phase outputs:

- **Configured Production Environment**
  - Production infrastructure deployed
  - Security controls active
  - Monitoring operational
  - Backups configured
  - Disaster recovery ready

- **Migrated Data**
  - All business data migrated
  - Data reconciliation complete
  - Data quality validated
  - Historical data archived
  - Migration logs and reports

- **Test Reports**
  - Production smoke test results
  - Production UAT sign-off
  - Integration test verification
  - Performance validation
  - Security verification

- **Training Materials**
  - User guides and quick references
  - Training presentation decks
  - Video tutorials
  - Hands-on exercise guides
  - FAQ documents

- **Operational Runbooks** (→ docx skill)
  - Standard operating procedures
  - Troubleshooting guides
  - Incident response procedures
  - Escalation paths
  - Configuration management procedures

- **Go-Live Checklist**
  - Pre-cutover tasks
  - Cutover activities with timing
  - Post-cutover validation
  - Rollback procedures
  - Success criteria

- **Cutover Plan** (→ docx skill)
  - Detailed minute-by-minute timeline
  - Task assignments and dependencies
  - Communication schedule
  - Decision points and criteria
  - Contingency plans

- **Communication Materials** (→ pptx + docx skills)
  - Go-live announcements
  - User quick-start guides
  - Training schedules
  - Support contact information
  - Success stories and benefits messaging

- **Support Documentation**
  - Support model and SLAs
  - Knowledge base articles
  - Known issues and workarounds
  - Escalation procedures
  - Contact lists and on-call schedules

## Exit Criteria

Deploy phase successfully complete when ALL criteria met:

- ✓ **UAT sign-off in production**: Business users validated solution works with production data, acceptance criteria met

- ✓ **Production readiness confirmation**: All production readiness criteria met, no blocking issues

- ✓ **Cutover plan executed successfully**: Deployment completed according to plan, rollback not required

- ✓ **Support model operational**: Support team handling tickets, escalation working, SLAs defined and achievable

- ✓ **All users migrated**: Complete user base onboarded OR phased migration on track with next waves planned

- ✓ **Legacy systems decommissioned or in decommission plan**: Old systems retired OR clear timeline for decommissioning with data retention plan

- ✓ **Hypercare period complete**: Initial intensive support period finished, issue rate declining, system stable

- ✓ **System stable**: No critical or high-priority open issues, performance acceptable, availability meeting SLA

Transition to Evolve phase only when production is stable and support team is fully capable.

## Migration Scenarios

Different migration scenarios require tailored approaches:

### Big Bang Migration
- Entire user base migrates at once
- High risk, high impact
- Minimal coexistence period
- Requires extensive preparation
- Best for: Smaller user bases, urgent timeline, simple migrations

### Phased Migration
- Users migrate in planned waves
- Controlled risk, manageable impact
- Coexistence period required
- Progressive learning
- Best for: Large user bases, complex migrations, risk mitigation

### Parallel Run
- Both systems operate simultaneously
- Users work in both systems
- Data synchronized between systems
- Low risk, high cost
- Best for: Critical systems, risk-averse organizations, validation needed

### Pilot-to-Rollout
- Pilot group migrates first
- Stabilize and learn
- Expand to broader user base
- Iterative approach
- Best for: New technologies, significant change, user adoption focus

For detailed migration strategies, coexistence patterns, risk mitigation approaches, and rollback procedures:

→ Load: `scenarios/large-scale-migrations.md`

## Skills to Engage

Document creation skills for Deploy phase deliverables:

- **docx skill**: Operational runbooks, cutover plan, support procedures, communication templates, training guides, migration reports
- **pptx skill**: Go-live announcements, training presentations, stakeholder updates, success celebration
- **xlsx skill**: Migration tracking, issue logs, user wave planning, deployment checklist, training attendance

## Deployment Success Patterns

Deploy phase done well exhibits these characteristics:

**Smooth Cutover with Minimal Disruption**:
- Deployment executes according to plan
- Timing accurate, no major delays
- Users experience minimal downtime
- Business processes continue with little interruption
- Rollback not required

**Rapid Issue Resolution**:
- Issues identified quickly through monitoring
- Triage process efficient
- Fixes deployed rapidly
- Communication transparent
- User confidence maintained

**User Adoption Tracking Positively**:
- Users logging in and using system
- Core processes being executed
- Adoption metrics trending upward
- Minimal resistance or workarounds
- Positive user feedback

**Business Processes Operating**:
- Critical business processes functioning
- End-to-end workflows complete
- Integrations working
- Reports available
- Business continuity maintained

**Support Team Effective**:
- Tickets being resolved within SLA
- Knowledge transfer complete
- Support team confident
- Escalation path working
- Issue backlog manageable

**Initial Business Value Realized**:
- Quick wins visible
- Productivity improvements measurable
- Cost savings beginning
- User satisfaction positive
- Stakeholders pleased

## Deployment Anti-Patterns

Avoid these common Deploy phase mistakes:

**Rushing Deployment Without Readiness**:
- Skipping UAT or accepting too many open issues
- Inadequate testing in production environment
- Insufficient training
- **Impact**: Production issues, user frustration, rollback required

**Poor Communication**:
- Users surprised by changes
- Stakeholders not updated
- Issue communication delayed
- **Impact**: User resistance, lack of confidence, perception of failure

**Inadequate Support Coverage**:
- Support team unprepared
- Insufficient hypercare resources
- Slow issue response
- **Impact**: User frustration, productivity loss, adoption failure

**Data Quality Issues**:
- Insufficient data cleansing
- Poor data validation
- Migration errors not caught
- **Impact**: Incorrect business decisions, user distrust, rework

**Ignoring Performance**:
- No performance testing under load
- Inadequate infrastructure capacity
- Performance degradation ignored
- **Impact**: Poor user experience, system instability, productivity loss

**No Rollback Plan**:
- Assuming success, no plan for failure
- Untested rollback procedures
- Unclear rollback triggers
- **Impact**: Extended outages, data loss, business disruption if issues occur

**Declaring Victory Too Early**:
- Ending hypercare support too soon
- Transitioning to support before stable
- Moving project team before ready
- **Impact**: Unresolved issues, loss of knowledge, support struggles

## Hypercare Period Best Practices

The critical first weeks in production:

**Extended Support Coverage**:
- 24/7 support during first week
- Extended hours (14-16 hours/day) for weeks 2-3
- Project team available for escalation
- Clear escalation paths and response SLAs

**Daily Triage Meetings**:
- Review all issues logged
- Prioritize and assign
- Track resolution progress
- Identify trends and systemic issues
- Communicate status to stakeholders

**Proactive Monitoring**:
- Watch dashboards constantly
- Monitor user activity patterns
- Track performance metrics
- Check integration health
- Alert on anomalies immediately

**Rapid Response Protocol**:
- Severity 1 issues: Immediate response
- Severity 2 issues: 2-hour response
- All issues acknowledged quickly
- Regular updates to users
- Escalation if not resolved within SLA

**Frequent Communication**:
- Daily status updates to stakeholders
- Issue summaries and trends
- Success stories and positive feedback
- Transparent about challenges
- Set expectations appropriately

**Knowledge Capture**:
- Document all issues and resolutions
- Update knowledge base in real-time
- Refine runbooks based on learnings
- Capture undocumented configuration
- Build FAQ from user questions

**User Feedback Collection**:
- Survey users on experience
- Conduct user interviews
- Gather suggestions for improvement
- Identify training gaps
- Understand user sentiment

**Stabilization Focus**:
- Fix critical issues immediately
- Defer enhancements to backlog
- Maintain system stability
- Build user confidence
- Demonstrate responsiveness

After hypercare period ends and system is stable, transition to Evolve phase for continuous improvement and value optimization.

---

*This phase takes the solution live and establishes it in production. With deployment successful and system stable, transition to Evolve phase for ongoing optimization and value realization.*
