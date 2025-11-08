# Template Skill Generation Plan

## Project Overview

**Objective**: Create a minimal template skill that demonstrates the basic structure and requirements for Claude Agent Skills.

**Purpose**: Provide a starting point for new skill development with proper structure and documentation.

**Repository Structure**: Following Anthropics skills repository pattern (https://github.com/anthropics/skills)

**Key Principles**:
- Minimal viable structure (SKILL.md only)
- Clear documentation of requirements
- Valid YAML frontmatter
- Actionable description
- Git commit after each completed task for version control

---

## Repository Structure

```
root/
├── template-skill/
│   └── SKILL.md (main entry point)
└── plans/
    └── template-skill-plan.md (this file)
```

---

## Git Workflow for Claude Code

### Repository Setup

**Before starting**, ensure you're working within a repository that follows the correct structure:

```bash
# Navigate to repository root
cd /path/to/repository

# Create skill directory
mkdir -p template-skill

# Create plans directory if it doesn't exist
mkdir -p plans

# Initialize git if not already done
git init  # (skip if repository already exists)

# Copy this plan to the plans directory
cp /path/to/PLAN.md plans/template-skill-plan.md

# Initial commit for the plan
git add plans/template-skill-plan.md
git commit -m "docs(template-skill): Add skill generation plan"
```

### Commit Strategy (CRITICAL)

**After completing EACH task**, you MUST commit the changes. This provides:
- Version control and rollback capability
- Clear audit trail of skill development
- Ability to track progress through git history
- Safe checkpoints during development

**Commit command template**:
```bash
git add template-skill/
git commit -m "feat(template-skill): Task [NUMBER] - [BRIEF_DESCRIPTION]"
```

### Commit Examples

**Task 1**:
```bash
git add template-skill/
git commit -m "feat(template-skill): Task 1 - Create directory structure"
```

**Task 2**:
```bash
git add template-skill/SKILL.md
git commit -m "feat(template-skill): Task 2 - Create SKILL.md with minimal template"
```

---

## Development Tasks

### Phase 1: Foundation Setup

#### Task 1: Create Directory Structure
**Status**: Pending
**Priority**: Critical
**Dependencies**: None

**Objective**: Create the basic directory structure for the template skill.

**Actions**:
1. Create `template-skill/` directory in repository root
2. Verify directory permissions and structure

**Git Commit**:
```bash
git add template-skill/
git commit -m "feat(template-skill): Task 1 - Create directory structure"
```

**Validation**:
- [ ] Directory `template-skill/` exists
- [ ] Directory is in repository root
- [ ] Git commit successful

---

#### Task 2: Create SKILL.md File
**Status**: Pending
**Priority**: Critical
**Dependencies**: Task 1

**Objective**: Create the main SKILL.md file with proper YAML frontmatter and minimal instructions.

**Content Structure**:
```yaml
---
name: template-skill
description: Replace with description of the skill and when Claude should use it.
---

# Insert instructions below
```

**Actions**:
1. Create `template-skill/SKILL.md` file
2. Add YAML frontmatter with required fields:
   - `name`: Must match directory name exactly
   - `description`: Placeholder text for users to replace
3. Add minimal markdown body with instruction placeholder
4. Validate YAML syntax

**Git Commit**:
```bash
git add template-skill/SKILL.md
git commit -m "feat(template-skill): Task 2 - Create SKILL.md with minimal template"
```

**Validation**:
- [ ] File `template-skill/SKILL.md` exists
- [ ] YAML frontmatter is valid (starts and ends with `---`)
- [ ] `name` field matches directory name: `template-skill`
- [ ] `description` field contains placeholder text
- [ ] Markdown body has clear placeholder for instructions
- [ ] Git commit successful

---

### Phase 2: Documentation & Validation

#### Task 3: Validate Skill Structure
**Status**: Pending
**Priority**: High
**Dependencies**: Task 2

**Objective**: Ensure the template skill meets all requirements of the Agent Skills Spec.

**Actions**:
1. Verify directory name is in hyphen-case
2. Verify `name` field in YAML matches directory name
3. Check YAML frontmatter is properly formatted
4. Confirm `description` field exists
5. Validate file can be read by YAML parsers

**Validation Checklist**:
- [ ] Directory name: `template-skill` (hyphen-case, lowercase)
- [ ] YAML frontmatter present and valid
- [ ] Required field `name`: `template-skill`
- [ ] Required field `description`: present and actionable
- [ ] File structure matches Agent Skills Spec 1.0
- [ ] No syntax errors

**Git Commit**:
```bash
# Only if validation requires fixes
git add template-skill/SKILL.md
git commit -m "fix(template-skill): Task 3 - Validation and corrections"
```

---

#### Task 4: Update Plan Status
**Status**: Pending
**Priority**: Low
**Dependencies**: Task 3

**Objective**: Mark this plan as completed and document final state.

**Actions**:
1. Update all task statuses to "Completed"
2. Document any deviations from original plan
3. Add completion timestamp
4. Final commit of plan

**Git Commit**:
```bash
git add plans/template-skill-plan.md
git commit -m "docs(template-skill): Task 4 - Mark plan as completed"
```

**Validation**:
- [ ] All tasks marked as completed
- [ ] Deviations documented (if any)
- [ ] Completion date added
- [ ] Git commit successful

---

## Task Summary Table

| Task # | Phase | Description | Status | Dependencies |
|--------|-------|-------------|--------|--------------|
| 1 | Foundation | Create directory structure | Pending | None |
| 2 | Foundation | Create SKILL.md file | Pending | Task 1 |
| 3 | Documentation | Validate skill structure | Pending | Task 2 |
| 4 | Documentation | Update plan status | Pending | Task 3 |

---

## Success Criteria

The template skill is considered complete when:

1. ✅ Directory `template-skill/` exists in repository root
2. ✅ File `template-skill/SKILL.md` exists and is valid
3. ✅ YAML frontmatter is properly formatted
4. ✅ Required fields (`name`, `description`) are present
5. ✅ Name in YAML matches directory name exactly
6. ✅ All tasks have been committed to git
7. ✅ Skill structure validates against Agent Skills Spec 1.0

---

## Extension Points

If expanding the template skill beyond minimal structure, consider adding:

**Optional Structure**:
```
template-skill/
├── SKILL.md
├── scripts/
│   └── example.sh
├── templates/
│   └── example.template
└── README.md
```

**Optional YAML Fields**:
```yaml
---
name: template-skill
description: Description of the skill
license: MIT
allowed-tools:
  - Read
  - Write
  - Edit
metadata:
  version: "1.0.0"
  author: "Your Name"
  category: "template"
---
```

**Additional Documentation**:
- Usage examples
- Common patterns
- Troubleshooting guide
- Integration instructions

---

## Version History

- **1.0 (2025-11-08)**: Initial template skill plan created
  - Minimal structure with SKILL.md only
  - 4 foundational tasks
  - Basic validation criteria

---

## Notes for AI Assistants

When creating skills based on this template:

1. **Always start by reading this plan file first**
2. **Follow tasks sequentially** - each builds on the previous
3. **Commit after each completed task** - provides safe checkpoints
4. **Validate at each step** - catch errors early
5. **Update the plan** - track progress and deviations
6. **Create a new plan file** - every skill needs its own plan at `plans/{skill-name}-plan.md`

### Creating a New Skill Plan

When creating a new skill plan based on this template:

1. Copy this file to `plans/{new-skill-name}-plan.md`
2. Update the project overview with specific objectives
3. Modify the repository structure to match requirements
4. Expand the task list based on skill complexity
5. Add skill-specific validation criteria
6. Commit the plan before starting development

**Example**:
```bash
# Create a new skill plan
cp plans/template-skill-plan.md plans/my-new-skill-plan.md

# Edit with skill-specific details
# ... make your changes ...

# Commit the plan
git add plans/my-new-skill-plan.md
git commit -m "docs(my-new-skill): Add skill generation plan"

# Now start following the tasks in the plan
```

---

## References

- [Agent Skills Specification](../agent_skills_spec.md)
- [Anthropic Skills Repository](https://github.com/anthropics/skills)
- [Template Skill](../template-skill/)

---

**Last Updated**: 2025-11-08
**Plan Status**: Template (Ready for use)
**Skill Status**: Complete (Minimal viable structure)
