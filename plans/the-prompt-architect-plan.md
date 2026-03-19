# The Prompt Architect - Skill Generation Plan

## Project Overview

**Objective**: Create an interactive prompt engineering skill that guides users through a structured dialogue to build comprehensive, optimized prompts for any task — whether answering queries, conducting research, building artifacts (Word, Excel, PowerPoint, Markdown), or writing code.

**Purpose**: Enable users to have a conversation with Claude that systematically gathers requirements, context, constraints, and preferences, then synthesizes everything into a single, high-fidelity prompt that delivers the desired outcome with the right quality and voice.

**Repository Structure**: Following Anthropics skills repository pattern (https://github.com/anthropics/skills)

**Key Principles**:
- Interactive dialogue-first approach using AskUserQuestion tool
- Support for multiple prompt engineering techniques (Zero-shot, Few-shot, Meta, Knowledge generation, Prompt chaining)
- Automatic humanize skill integration for artifact generation
- Voice profile selection (OX, SF, AB, ST)
- Progressive requirement gathering through structured questioning phases
- Single comprehensive prompt output that is agent-executable
- Git commit after each completed task

---

## Repository Structure

```
root/
├── the-prompt-architect/
│   ├── SKILL.md (main entry point - skill instructions)
│   └── .skillrc (metadata and configuration)
└── plans/
    └── the-prompt-architect-plan.md (this file)
```

---

## Git Workflow

### Commit Strategy

**After completing EACH task**, commit changes:

```bash
git add the-prompt-architect/
git commit -m "feat(the-prompt-architect): Task [NUMBER] - [BRIEF_DESCRIPTION]"
```

---

## Development Tasks

### Phase 1: Foundation Setup

#### Task 1: Create Directory Structure
**Status**: Pending
**Priority**: Critical
**Dependencies**: None

**Objective**: Create the skill directory.

**Actions**:
1. Create `the-prompt-architect/` directory in repository root

**Git Commit**:
```bash
git add the-prompt-architect/
git commit -m "feat(the-prompt-architect): Task 1 - Create directory structure"
```

**Validation**:
- [ ] Directory `the-prompt-architect/` exists
- [ ] Directory is in repository root

---

#### Task 2: Create SKILL.md File
**Status**: Pending
**Priority**: Critical
**Dependencies**: Task 1

**Objective**: Create the comprehensive SKILL.md with the full prompt architect skill instructions.

**Content Requirements**:
- YAML frontmatter with name, description, license
- Skill Identity and Overview
- 5-Phase Interactive Workflow:
  - Phase 1: Intent Discovery (what the user wants to achieve)
  - Phase 2: Context & Constraints Gathering (audience, tone, format, scope)
  - Phase 3: Technique Selection (Zero-shot, Few-shot, Meta, Knowledge generation, Prompt chaining)
  - Phase 4: Voice & Artifact Configuration (humanize skill integration, voice profiles)
  - Phase 5: Prompt Assembly & Delivery (synthesize into comprehensive prompt)
- Prompt Technique Definitions and When-to-Use guides
- Voice Profile Integration (OX, SF, AB, ST)
- Artifact-Aware Generation (triggers humanize skill for Word, Excel, PowerPoint, Markdown)
- Output Format Specification

**Git Commit**:
```bash
git add the-prompt-architect/SKILL.md
git commit -m "feat(the-prompt-architect): Task 2 - Create SKILL.md with full skill instructions"
```

**Validation**:
- [ ] SKILL.md has valid YAML frontmatter
- [ ] `name` field matches directory name: `the-prompt-architect`
- [ ] Description is clear and actionable
- [ ] All 5 prompt techniques documented
- [ ] Voice profile integration included
- [ ] Humanize skill referenced for artifacts
- [ ] AskUserQuestion tool workflow defined
- [ ] Under 500 lines (skill spec recommendation)

---

#### Task 3: Create .skillrc Metadata File
**Status**: Pending
**Priority**: High
**Dependencies**: Task 2

**Objective**: Create the skill metadata configuration file.

**Git Commit**:
```bash
git add the-prompt-architect/.skillrc
git commit -m "feat(the-prompt-architect): Task 3 - Add .skillrc metadata"
```

**Validation**:
- [ ] .skillrc follows YAML format
- [ ] Contains skill classification, workflow phases, supported techniques
- [ ] Version and changelog present

---

### Phase 2: Validation & Completion

#### Task 4: Validate Skill Structure
**Status**: Pending
**Priority**: High
**Dependencies**: Task 3

**Objective**: Ensure the skill meets Agent Skills Spec 1.0.

**Validation Checklist**:
- [ ] Directory name is hyphen-case
- [ ] YAML frontmatter valid
- [ ] `name` matches directory
- [ ] `description` is specific and triggerable
- [ ] Markdown body is complete
- [ ] Skill is under recommended token limits
- [ ] All prompt techniques covered
- [ ] Voice profiles documented
- [ ] Humanize skill integration present

---

#### Task 5: Update Plan Status
**Status**: Pending
**Priority**: Low
**Dependencies**: Task 4

**Objective**: Mark plan as completed.

**Git Commit**:
```bash
git add plans/the-prompt-architect-plan.md
git commit -m "docs(the-prompt-architect): Task 5 - Mark plan as completed"
```

---

## Task Summary Table

| Task # | Phase | Description | Status | Dependencies |
|--------|-------|-------------|--------|--------------|
| 1 | Foundation | Create directory structure | Pending | None |
| 2 | Foundation | Create SKILL.md | Pending | Task 1 |
| 3 | Foundation | Create .skillrc metadata | Pending | Task 2 |
| 4 | Validation | Validate skill structure | Pending | Task 3 |
| 5 | Completion | Update plan status | Pending | Task 4 |

---

## Success Criteria

1. Directory `the-prompt-architect/` exists
2. SKILL.md is valid with proper frontmatter
3. Interactive 5-phase workflow is complete
4. All 5 prompt techniques supported (Zero-shot, Few-shot, Meta, Knowledge generation, Prompt chaining)
5. Voice profile selection (OX, SF, AB, ST) integrated
6. Humanize skill auto-triggers for artifact generation
7. AskUserQuestion tool drives the dialogue
8. Comprehensive prompt output format defined
9. All tasks committed to git

---

**Last Updated**: 2026-03-19
**Plan Status**: Active
**Skill Status**: In Development
