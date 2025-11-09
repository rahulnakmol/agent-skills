# MS Enterprise Architect Skill - Context Optimization Test Scenarios

**Purpose**: Validate that the context optimization achieves target reductions while maintaining quality
**Version**: 1.0
**Date**: November 2025

---

## Test Methodology

For each scenario, measure:
1. **Context Load** (lines loaded)
2. **Token Estimate** (approximate tokens consumed)
3. **Turn Count** (number of exchanges to reach full depth)
4. **Quality Assessment** (response accuracy and completeness)

**Success Criteria**:
- ✅ 80%+ reduction in initial context load
- ✅ No degradation in response quality
- ✅ < 3 turns to reach deep technical detail
- ✅ Natural conversational flow

---

## Test Scenario 1: Simple Overview Query

### User Query
"Explain the 5-phase methodology"

### Expected Loading (Version 2.0)
**Turn 1**:
- Layer 0: SKILL.md (462 lines)
- Layer 1: phase-summaries.md (100 lines)
- **Total**: ~562 lines (~3,700 tokens)

### Baseline (Version 1.0)
- SKILL.md (318 lines)
- delivery-methodology-overview.md (265 lines)
- All 5 phase files (~3,000 lines)
- **Total**: ~3,583 lines (~23,000 tokens)

### Metrics
- **Reduction**: 84% fewer lines, 84% fewer tokens
- **Turn Count**: 1 turn (complete answer)
- **Quality**: Should accurately summarize all 5 phases with decision tree

### Quality Validation Checklist
- [ ] Describes all 5 phases accurately
- [ ] Explains phase optionality
- [ ] Provides decision criteria for entry point
- [ ] Mentions typical durations
- [ ] Offers to load detailed phase info if needed

---

## Test Scenario 2: Medium Complexity - Azure Reliability Architecture

### User Query
"Help me design for Azure reliability"

### Expected Loading (Version 2.0)
**Turn 1**:
- Layer 0: SKILL.md (462 lines)
- Layer 1: framework-catalog.md (150 lines)
- **Total**: ~612 lines (~4,000 tokens)
- **Response**: Ask to confirm Azure (vs Power Platform) and discuss reliability focus

**Turn 2**:
- Previous context (612 lines)
- Layer 2: azure-waf-reliability.md (396 lines)
- **Total**: ~1,008 lines (~6,500 tokens)
- **Response**: Detailed reliability guidance

### Baseline (Version 1.0)
- SKILL.md (318 lines)
- azure-waf-reliability.md (396 lines)
- azure-specifics.md (910 lines)
- quality-standards.md (983 lines)
- **Total**: ~2,607 lines (~17,000 tokens)

### Metrics
- **Initial Reduction**: 76% fewer lines (turn 1)
- **Final Reduction**: 61% fewer lines (after turn 2)
- **Turn Count**: 2 turns to full depth
- **Quality**: Should provide complete reliability guidance

### Quality Validation Checklist
- [ ] Turn 1: Confirms platform and priority
- [ ] Turn 2: Covers design principles
- [ ] Turn 2: Discusses availability zones
- [ ] Turn 2: Explains DR strategies
- [ ] Turn 2: Provides assessment questions
- [ ] Offers to load related scenarios if needed

---

## Test Scenario 3: Complex Multi-Faceted Query

### User Query
"Design an agentic solution with Dynamics 365 integration using DDD principles"

### Expected Loading (Version 2.0)
**Turn 1**:
- Layer 0: SKILL.md (462 lines)
- Layer 1: framework-catalog.md (150 lines) + quick-reference.md (200 lines)
- **Total**: ~812 lines (~5,300 tokens)
- **Response**: Clarify requirements, suggest loading agent framework + DDD

**Turn 2**:
- Previous context (812 lines)
- Layer 2: agent-development-framework.md (567 lines)
- Layer 2: domain-driven-design.md (405 lines)
- **Total**: ~1,784 lines (~11,600 tokens)
- **Response**: Agent patterns + DDD strategic design

**Turn 3**:
- Previous context (1,784 lines)
- Layer 2: dynamics-specifics.md (948 lines)
- Layer 2: ai-cognitive-specifics.md (1,033 lines)
- **Total**: ~3,765 lines (~24,500 tokens)
- **Response**: Complete integration architecture

### Baseline (Version 1.0)
- SKILL.md (318 lines)
- agent-development-framework.md (567 lines)
- domain-driven-design.md (405 lines)
- dynamics-specifics.md (948 lines)
- ai-cognitive-specifics.md (1,033 lines)
- azure-specifics.md (910 lines)
- mermaid-diagram-patterns.md (1,974 lines)
- **Total**: ~6,155 lines (~40,000 tokens)

### Metrics
- **Initial Reduction**: 87% fewer lines (turn 1)
- **Mid-point Reduction**: 71% fewer lines (turn 2)
- **Final Reduction**: 39% fewer lines (turn 3, still under budget)
- **Turn Count**: 3 turns to complete architecture
- **Quality**: Should provide comprehensive integration design

### Quality Validation Checklist
- [ ] Turn 1: Identifies need for agent + DDD + Dynamics
- [ ] Turn 2: Explains multi-agent patterns
- [ ] Turn 2: Describes bounded context mapping
- [ ] Turn 3: Details Dynamics integration points
- [ ] Turn 3: Covers Azure AI services
- [ ] Offers diagram templates
- [ ] Stays within 30k token budget

---

## Test Scenario 4: Simple Diagram Request

### User Query
"Create a C4 context diagram for my solution"

### Expected Loading (Version 2.0)
**Turn 1**:
- Layer 0: SKILL.md (462 lines)
- Layer 1: template-guide.md (100 lines) - has inline C4 template
- **Total**: ~562 lines (~3,700 tokens)
- **Response**: Uses inline template, asks about branding

### Baseline (Version 1.0)
- SKILL.md (318 lines)
- mermaid-diagram-patterns.md (1,974 lines)
- **Total**: ~2,292 lines (~15,000 tokens)

### Metrics
- **Reduction**: 75% fewer lines, 75% fewer tokens
- **Turn Count**: 1 turn (provides diagram)
- **Quality**: Should generate valid C4 context diagram

### Quality Validation Checklist
- [ ] Asks about branding preferences
- [ ] Generates valid Mermaid C4 syntax
- [ ] Uses inline template (no full library load)
- [ ] Offers to create additional diagram levels if needed

---

## Test Scenario 5: Framework Selection Guidance

### User Query
"Which frameworks should I use for my Power Platform enterprise solution?"

### Expected Loading (Version 2.0)
**Turn 1**:
- Layer 0: SKILL.md (462 lines)
- Layer 1: framework-catalog.md (150 lines)
- **Total**: ~612 lines (~4,000 tokens)
- **Response**: Recommends all 5 PP WAF pillars + explains each

### Baseline (Version 1.0)
- SKILL.md (318 lines)
- All 5 PP WAF pillar files (~2,500 lines)
- power-platform-specifics.md (895 lines)
- **Total**: ~3,713 lines (~24,000 tokens)

### Metrics
- **Reduction**: 84% fewer lines, 83% fewer tokens
- **Turn Count**: 1 turn (complete guidance)
- **Quality**: Should explain all pillars and when to use each

### Quality Validation Checklist
- [ ] Mentions all 5 PP WAF pillars + Experience Optimization
- [ ] Explains when to use each
- [ ] Provides decision guidance
- [ ] Offers to load specific pillars for deep-dive
- [ ] No unnecessary context loading

---

## Test Scenario 6: Vision Phase Engagement

### User Query
"Help me create a Target Operating Model for a digital transformation"

### Expected Loading (Version 2.0)
**Turn 1**:
- Layer 0: SKILL.md (462 lines)
- Layer 1: phase-summaries.md (100 lines)
- **Total**: ~562 lines (~3,700 tokens)
- **Response**: Confirms Vision phase, asks about current state

**Turn 2**:
- Previous context (562 lines)
- Layer 2: phase-vision.md (871 lines)
- Layer 2: vision-phase-templates.md (503 lines)
- **Total**: ~1,936 lines (~12,600 tokens)
- **Response**: TOM framework and templates

**Turn 3** (if diagrams needed):
- Previous context (1,936 lines)
- Layer 2: domain-driven-design.md (405 lines)
- Layer 3: mermaid-diagram-patterns.md (1,974 lines) - or just relevant sections
- **Total**: ~4,315 lines (~28,000 tokens)

### Baseline (Version 1.0)
- SKILL.md (318 lines)
- phase-vision.md (871 lines)
- vision-phase-templates.md (503 lines)
- domain-driven-design.md (405 lines)
- mermaid-diagram-patterns.md (1,974 lines)
- core-platforms.md (522 lines)
- **Total**: ~4,593 lines (~30,000 tokens)

### Metrics
- **Initial Reduction**: 88% fewer lines (turn 1)
- **Mid-point Reduction**: 58% fewer lines (turn 2)
- **Final Reduction**: 6% fewer lines (turn 3, but progressive)
- **Turn Count**: 2-3 turns
- **Quality**: Complete Vision phase guidance

### Quality Validation Checklist
- [ ] Turn 1: Confirms Vision phase appropriate
- [ ] Turn 2: Provides TOM framework
- [ ] Turn 2: Explains maturity assessment
- [ ] Turn 2: Offers gap analysis approach
- [ ] Turn 3: Provides diagram templates if requested
- [ ] Natural conversation flow

---

## Summary of Expected Results

| Scenario | Baseline Lines | V2.0 Initial Lines | Reduction % | Turn Count | Token Budget OK? |
|----------|----------------|-------------------|-------------|------------|------------------|
| 1. Simple Overview | 3,583 | 562 | 84% | 1 | ✅ Yes (3.7k) |
| 2. Azure Reliability | 2,607 | 612 → 1,008 | 76% → 61% | 2 | ✅ Yes (6.5k) |
| 3. Complex Multi | 6,155 | 812 → 3,765 | 87% → 39% | 3 | ✅ Yes (24.5k) |
| 4. Simple Diagram | 2,292 | 562 | 75% | 1 | ✅ Yes (3.7k) |
| 5. Framework Selection | 3,713 | 612 | 84% | 1 | ✅ Yes (4k) |
| 6. Vision Phase | 4,593 | 562 → 4,315 | 88% → 6% | 2-3 | ✅ Yes (28k) |

### Overall Performance
- **Average initial reduction**: 82%
- **All scenarios under 30k token budget**: ✅ Yes
- **Progressive loading working**: ✅ Yes
- **Natural conversation flow**: ✅ Expected

---

## Test Execution Plan

1. **Load skill in Claude Chat/Code**
2. **Run each scenario sequentially**
3. **Record actual context usage** (if measurable)
4. **Assess response quality** against checklists
5. **Document any issues or improvements**
6. **Update index files if gaps found**

---

## Success Metrics Achieved

If all scenarios pass:
- ✅ Context efficiency: 80%+ reduction in initial loads
- ✅ Token budget: All scenarios stay under 30k tokens
- ✅ Quality maintenance: No degradation in accuracy
- ✅ User experience: Natural progressive disclosure
- ✅ Scalability: Can handle complex multi-faceted queries

---

*Test Scenarios Version: 1.0*
*Created: November 2025*
*Status: Ready for execution*
