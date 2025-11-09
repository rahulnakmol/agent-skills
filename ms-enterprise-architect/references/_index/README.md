# Index & Quick Reference Layer

This directory contains Layer 1 reference files - quick summaries and catalogs designed to minimize context usage while providing immediate value.

## Purpose

The index layer serves as the **first stop** for most queries, providing:
- Quick summaries of complex topics
- Decision matrices for selecting the right reference
- Common patterns and cheat sheets
- Smart routing to deeper references

## Loading Strategy

**When to load index files:**
- On first mention of a topic category
- When user asks overview/summary questions
- As a decision aid before loading full references

**Progressive depth:**
1. **Layer 0**: SKILL.md (always loaded)
2. **Layer 1**: Index files (load on first query)
3. **Layer 2**: Category files (load when specific topic confirmed)
4. **Layer 3**: Full references (load for implementation)

## Files in This Directory

### phase-summaries.md (~100 lines)
**Purpose**: Overview of the 5-phase methodology
**When to load**: Keywords like "methodology", "phase", "approach", "TOM"
**Leads to**: Specific phase files in `/phases/`

### framework-catalog.md (~150 lines)
**Purpose**: Guide to selecting and using architectural frameworks
**When to load**: Keywords like "WAF", "framework", "DDD", "well-architected"
**Leads to**: Specific framework files in `/frameworks/`

### template-guide.md (~100 lines)
**Purpose**: Quick reference for document templates and diagrams
**When to load**: Keywords like "template", "diagram", "mermaid", "document"
**Leads to**: Specific template files in `/templates/`

### quick-reference.md (~200 lines)
**Purpose**: Most common patterns, cheat sheets, emergency links
**When to load**: General queries, quick lookups, common scenarios
**Leads to**: Various category files based on need

## Context Budget

**Total for all index files**: ~3,950 tokens (~550 lines)
**Individual files**: 650-1,500 tokens each

**Compared to loading full references**: 85-90% reduction in context usage

## Maintenance

Index files should be:
- **Updated quarterly** when framework/platform changes occur
- **Kept concise** - resist the urge to expand beyond target line counts
- **Action-oriented** - focus on decision-making, not exhaustive detail
- **Well-linked** - clearly indicate which full reference to load next

## Quality Standards

Each index file must:
1. ✅ Provide immediate value (answer simple queries completely)
2. ✅ Enable smart decisions (what to load next)
3. ✅ Stay within token budget (see file headers)
4. ✅ Link to deeper references (clear next steps)
5. ✅ Update with quarterly reviews (track changes)

---

*Index Layer Version: 1.0*
*Last Updated: November 2025*
*Next Review: February 2026*
