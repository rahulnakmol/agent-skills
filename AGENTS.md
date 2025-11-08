# AGENTS.md - Guide for AI Coding Assistants

This document provides instructions for AI coding assistants (Claude Code, OpenAI Codex, etc.) on how to use this repository to create and develop Claude Agent Skills.

## Purpose

This repository is a **development environment for creating Claude Agent Skills**. It provides:
- The official Agent Skills Specification (`agent_skills_spec.md`)
- A template skill structure (`template-skill/`)
- Examples and development plans (`plans/`)
- Guidelines for building effective skills

## CRITICAL: Plan-First Development Workflow

**⚠️ MANDATORY REQUIREMENT ⚠️**

Every skill development MUST follow this workflow:

1. **Create a plan FIRST** in the `plans/` folder
2. **1:1 Relationship**: Each skill MUST have a corresponding plan file
3. **Naming Convention**: `plans/{skill-name}-plan.md` for skill `{skill-name}/`
4. **Reference the plan** throughout development

### Example Mapping

| Skill Directory | Plan File |
|----------------|-----------|
| `template-skill/` | `plans/template-skill-plan.md` |
| `ms-enterprise-architect/` | `plans/ms-enterprise-architect-plan.md` |
| `my-new-skill/` | `plans/my-new-skill-plan.md` |

### Why Plans Are Required

Plans provide:
- **Structured task breakdown** - Clear steps to follow
- **Git workflow guidance** - Commit strategy for each task
- **Validation criteria** - Success metrics at each stage
- **Progress tracking** - Easy to resume work
- **Documentation** - Audit trail of development decisions

**Before starting any skill development, AI assistants MUST:**
1. Read the corresponding plan file in `plans/`
2. If no plan exists, create one based on `plans/template-skill-plan.md`
3. Follow tasks sequentially as defined in the plan
4. Commit after each completed task

## Quick Reference: Creating a New Skill

When asked to create a new Claude skill, follow these steps:

### 0. Create or Reference the Plan (FIRST STEP)

**Before doing anything else:**

```bash
# Check if plan exists
ls plans/{skill-name}-plan.md

# If plan doesn't exist, create it from template
cp plans/template-skill-plan.md plans/{skill-name}-plan.md

# Edit the plan with skill-specific details
# Update objectives, tasks, structure, validation criteria

# Commit the plan
git add plans/{skill-name}-plan.md
git commit -m "docs({skill-name}): Add skill generation plan"

# NOW read and follow the plan for all subsequent steps
```

**For AI Assistants:**
- ✅ ALWAYS read `plans/{skill-name}-plan.md` before starting
- ✅ Follow the tasks in sequential order
- ✅ Commit after each task as specified in plan
- ❌ NEVER skip the plan - it's mandatory
- ❌ NEVER start coding without a plan

### 1. Create the Skill Directory

```bash
mkdir skill-name-in-hyphen-case
cd skill-name-in-hyphen-case
```

**Naming Rules:**
- Use hyphen-case (lowercase with hyphens)
- Only lowercase Unicode alphanumeric characters + hyphens
- The directory name MUST match the `name` field in SKILL.md

### 2. Create SKILL.md with Required Structure

Every skill MUST have a `SKILL.md` file with:

```yaml
---
name: skill-name-in-hyphen-case
description: Clear, concise description of what the skill does and when Claude should use it
---

# Skill Instructions

[Your markdown instructions for Claude go here]
```

**Required Fields:**
- `name`: Must match the directory name exactly
- `description`: Should clearly explain:
  - What the skill does
  - When Claude should invoke it
  - What problems it solves

**Optional Fields:**
- `license`: License identifier (e.g., "MIT", "Apache-2.0")
- `allowed-tools`: Array of pre-approved tools for Claude Code
- `metadata`: Custom key-value pairs for client-specific properties

### 3. Add Skill Instructions (Markdown Body)

The markdown body should include:

**Essential Elements:**
- Clear objectives and goals
- Step-by-step instructions
- Examples of expected input/output
- Error handling guidelines
- Tool usage instructions (if applicable)

**Best Practices:**
- Use headings to organize sections
- Include code blocks with syntax highlighting
- Provide concrete examples
- Specify any file paths or naming conventions
- Document any dependencies or prerequisites

## Skill Development Workflow

### Step 0: Create or Read the Plan (MANDATORY FIRST STEP)

**Before any development work:**

1. **Check for existing plan**
   ```bash
   ls plans/{skill-name}-plan.md
   ```

2. **If plan exists:** Read it completely and follow its tasks
   ```bash
   # Read the plan
   cat plans/{skill-name}-plan.md

   # Follow tasks sequentially as defined
   ```

3. **If plan doesn't exist:** Create it from template
   ```bash
   # Copy template plan
   cp plans/template-skill-plan.md plans/{skill-name}-plan.md

   # Customize the plan with skill-specific details
   # Edit: objectives, tasks, structure, validation criteria

   # Commit the plan
   git add plans/{skill-name}-plan.md
   git commit -m "docs({skill-name}): Add skill generation plan"
   ```

**Plan Template Structure:**
- Project Overview (objectives, purpose, principles)
- Repository Structure (directory layout)
- Git Workflow (commit strategy)
- Development Tasks (numbered, sequential, with dependencies)
- Success Criteria (validation checklist)

### Step 1: Understand the Request (As per Plan)
- Clarify the skill's purpose and scope
- Identify the target use case
- Determine required tools and resources
- **Update these in the plan file**

### Step 2: Execute Plan Tasks Sequentially
- Follow numbered tasks in `plans/{skill-name}-plan.md`
- Complete tasks in order (respect dependencies)
- Commit after each task completion
- Update task status in plan as you progress

### Step 3: Create the Skill Directory (Plan Task 1)
```bash
# Create directory (as specified in plan)
mkdir my-new-skill

# Commit after completing this task
git add my-new-skill/
git commit -m "feat(my-new-skill): Task 1 - Create directory structure"
```

### Step 4: Create SKILL.md File (Plan Task 2)
```bash
# Create SKILL.md
cat > my-new-skill/SKILL.md << 'EOF'
---
name: my-new-skill
description: Description of what this skill does and when to use it
---

# Instructions

Your detailed instructions here...
EOF

# Commit after completing this task
git add my-new-skill/SKILL.md
git commit -m "feat(my-new-skill): Task 2 - Create SKILL.md with initial structure"
```

### Step 5: Add Supporting Files (Plan Task 3+, if needed)
Skills can include additional files:
- Scripts (Python, JavaScript, shell scripts)
- Templates (for generating code/documents)
- Data files (JSON, YAML, CSV)
- Documentation (additional .md files)

Example structure:
```
my-skill/
├── SKILL.md
├── scripts/
│   └── helper.py
├── templates/
│   └── example.template
└── data/
    └── reference.json
```

**Commit after each addition:**
```bash
# After adding scripts
git add my-new-skill/scripts/
git commit -m "feat(my-new-skill): Task 3 - Add helper scripts"

# After adding templates
git add my-new-skill/templates/
git commit -m "feat(my-new-skill): Task 4 - Add templates"

# Follow the task numbering in your plan
```

### Step 6: Test and Validate (As per Plan Validation Tasks)
- Verify SKILL.md has valid YAML frontmatter
- Check that `name` matches directory name
- Ensure description is clear and actionable
- Test that instructions are complete and unambiguous
- Run validation checklist from plan

**Final validation commit:**
```bash
# After validation and any fixes
git add my-new-skill/
git commit -m "fix(my-new-skill): Task N - Validation fixes and final review"

# Update plan status
git add plans/my-new-skill-plan.md
git commit -m "docs(my-new-skill): Mark plan as completed"
```

## Common Skill Patterns

### 1. Document Processing Skill
```yaml
---
name: document-processor
description: Process and analyze documents in various formats (PDF, DOCX, XLSX)
allowed-tools: [Read, Write, Bash]
---

# Document Processing Skill

## Purpose
Process documents and extract structured information.

## Instructions
1. Read the document using the Read tool
2. Parse the content according to format
3. Extract requested information
4. Format output as specified
```

### 2. Code Generation Skill
```yaml
---
name: code-generator
description: Generate boilerplate code following specific patterns and conventions
allowed-tools: [Write, Edit, Read]
---

# Code Generation Skill

## Purpose
Generate consistent, well-structured code following project conventions.

## Instructions
1. Analyze the project structure
2. Identify required patterns
3. Generate code using templates
4. Apply formatting and linting rules
```

### 3. Analysis and Research Skill
```yaml
---
name: codebase-analyzer
description: Analyze codebases for patterns, issues, and improvement opportunities
allowed-tools: [Read, Grep, Glob, Task]
---

# Codebase Analyzer Skill

## Purpose
Perform deep analysis of codebases to identify patterns and issues.

## Instructions
1. Map the codebase structure
2. Identify code patterns
3. Detect potential issues
4. Generate comprehensive report
```

## Tool Specifications for Skills

When creating skills for Claude Code, you can specify `allowed-tools` to pre-approve tools:

```yaml
---
name: my-skill
description: My skill description
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Grep
  - Glob
  - WebFetch
---
```

**Available Tools:**
- `Read`: Read files from filesystem
- `Write`: Write new files
- `Edit`: Edit existing files
- `Bash`: Execute bash commands
- `Grep`: Search file contents
- `Glob`: Find files by pattern
- `WebFetch`: Fetch content from URLs
- `WebSearch`: Search the web
- `Task`: Launch specialized agents
- `NotebookEdit`: Edit Jupyter notebooks
- `TodoWrite`: Manage task lists

## Writing Effective Skill Descriptions

The `description` field is critical for Claude to know when to invoke the skill.

**Good Descriptions:**
- ✅ "Generate React components following Material-UI design patterns with TypeScript"
- ✅ "Analyze Python code for security vulnerabilities and suggest fixes"
- ✅ "Create comprehensive test suites for API endpoints with edge case coverage"

**Poor Descriptions:**
- ❌ "Helps with React" (too vague)
- ❌ "Does stuff" (not actionable)
- ❌ "A useful skill" (doesn't explain what it does)

**Description Formula:**
```
[Action verb] + [specific task] + [context/constraints] + [when to use]
```

Example:
```
"Generate production-ready Terraform modules for AWS infrastructure following best practices. Use when user requests AWS infrastructure as code."
```

## Directory Structure Examples

### Minimal Skill
```
simple-skill/
└── SKILL.md
```

### Skill with Scripts
```
automation-skill/
├── SKILL.md
├── scripts/
│   ├── setup.sh
│   └── process.py
└── README.md
```

### Complex Skill
```
enterprise-skill/
├── SKILL.md
├── scripts/
│   ├── init.js
│   ├── validate.py
│   └── deploy.sh
├── templates/
│   ├── config.template.yaml
│   └── dockerfile.template
├── data/
│   └── defaults.json
└── docs/
    └── usage.md
```

## Validation Checklist

Before finalizing a skill, verify:

**Plan Requirements:**
- [ ] Plan file exists at `plans/{skill-name}-plan.md`
- [ ] Plan has been followed throughout development
- [ ] All tasks in plan are marked as completed
- [ ] Plan status updated to "Completed"

**Skill Structure:**
- [ ] Directory name is in hyphen-case
- [ ] SKILL.md exists and is valid
- [ ] YAML frontmatter is properly formatted
- [ ] `name` field matches directory name exactly
- [ ] `description` is clear and actionable

**Content Quality:**
- [ ] Markdown instructions are complete
- [ ] Examples are provided where helpful
- [ ] Any additional files are properly referenced
- [ ] Tool usage is documented
- [ ] Error handling is addressed

**Git Workflow:**
- [ ] Each task has been committed separately
- [ ] Commit messages follow plan conventions
- [ ] All changes are committed and pushed
- [ ] Plan file is up to date in repository

## Common Issues and Solutions

### Issue: YAML Frontmatter Parsing Error
**Solution:** Ensure frontmatter is enclosed by `---` on both sides:
```yaml
---
name: my-skill
description: My description
---
```

### Issue: Skill Not Loading
**Solution:** Check that:
- Directory name matches `name` field
- SKILL.md is in the root of skill directory
- YAML is valid (use a YAML validator)

### Issue: Unclear Instructions
**Solution:** Add:
- Step-by-step procedures
- Concrete examples
- Expected inputs and outputs
- Error handling guidelines

### Issue: No Plan File or Plan Not Found
**Solution:**
- Every skill MUST have a corresponding plan in `plans/{skill-name}-plan.md`
- Create from template:
  ```bash
  cp plans/template-skill-plan.md plans/{skill-name}-plan.md
  # Edit with skill-specific details
  git add plans/{skill-name}-plan.md
  git commit -m "docs({skill-name}): Add skill generation plan"
  ```
- NEVER skip this step - plans are mandatory, not optional

### Issue: Lost Track of Development Progress
**Solution:**
- Refer back to the plan file: `plans/{skill-name}-plan.md`
- Check task status table
- Review git commit history
- Update plan with current status

## Development Commands

```bash
# Create a new skill from template
cp -r template-skill/ new-skill-name/
cd new-skill-name/
# Edit SKILL.md with your content

# Validate YAML frontmatter
head -n 10 SKILL.md

# Check skill structure
ls -la

# Test skill locally (if using Claude Code)
# Add to ~/.config/claude/skills/ or project skills directory
```

## Best Practices for AI Assistants

When creating skills:

1. **Be Specific:** Write clear, unambiguous instructions
2. **Be Complete:** Include all necessary steps and context
3. **Be Practical:** Provide concrete examples and use cases
4. **Be Safe:** Document security considerations and limitations
5. **Be Helpful:** Anticipate common questions and edge cases

## Integration with Claude Code

Skills can be used in Claude Code by:
- Placing them in `~/.config/claude/skills/` (user-level)
- Placing them in `.claude/skills/` (project-level)
- Installing from skill marketplace

## Integration with Claude.ai

Skills can be uploaded to Claude.ai by paid users:
- Zip the skill directory
- Upload via Skills interface
- Skill becomes available in conversation

## API Integration

Skills can be used via Claude API:
- Include skill content in system prompts
- Reference skill files in API calls
- Use Skills API endpoints (when available)

## Examples and References

**This Repository Contains:**
- `agent_skills_spec.md` - Full specification for Agent Skills Spec 1.0
- `template-skill/` - Minimal skill template with basic SKILL.md
- `plans/` - Development plans (REQUIRED for each skill)
  - `plans/template-skill-plan.md` - Template plan for simple skills
  - `plans/ms-enterprise-architect-plan.md` - Example of complex skill plan
- `README.md` - User-facing documentation

**Plan Files (1:1 Relationship with Skills):**
Every skill directory must have a corresponding plan:
- `template-skill/` → `plans/template-skill-plan.md`
- `ms-enterprise-architect/` → `plans/ms-enterprise-architect-plan.md`
- `your-skill/` → `plans/your-skill-plan.md` (create from template)

**External Resources:**
- [Anthropic Skills Repository](https://github.com/anthropics/skills) - Official examples
- [Claude Code Documentation](https://docs.claude.com/claude-code) - Usage guides

## Metadata Usage

Use the `metadata` field for custom properties:

```yaml
---
name: my-skill
description: My skill description
metadata:
  version: "1.0.0"
  author: "Your Name"
  category: "development"
  requires-external-tools: "false"
---
```

## Version Information

This guide is based on Agent Skills Spec 1.0 (2025-10-16).

---

## Quick Start for AI Assistants

When a user asks you to create a Claude skill:

### STEP 0: Plan First (MANDATORY)
1. **Read or create the plan:** Check if `plans/{skill-name}-plan.md` exists
   - If exists: Read it completely before proceeding
   - If not exists: Create it from `plans/template-skill-plan.md`
2. **Commit the plan:** Always commit the plan before starting development

### STEP 1: Clarify and Structure
3. **Clarify requirements:** What should the skill do? When should it be used?
4. **Choose a name:** Use hyphen-case, be descriptive
5. **Update plan:** Customize tasks, structure, and validation criteria

### STEP 2: Development (Follow Plan Tasks)
6. **Create directory:** `mkdir skill-name` (as per plan Task 1)
7. **Create SKILL.md:** Follow the template structure (as per plan Task 2)
8. **Write instructions:** Be clear, complete, and practical (as per plan tasks)
9. **Add resources:** Include scripts, templates, or data as needed (as per plan tasks)
10. **Commit after each task:** Follow git workflow specified in plan

### STEP 3: Validation and Completion
11. **Validate:** Check structure, naming, and completeness (as per plan validation)
12. **Test:** Verify the skill works as intended
13. **Update plan status:** Mark tasks as completed

**Critical Reminders:**
- ⚠️ **NEVER skip the plan** - It's mandatory, not optional
- ⚠️ **Read `plans/{skill-name}-plan.md` FIRST** before any coding
- ⚠️ **Follow tasks sequentially** as defined in the plan
- ⚠️ **Commit after each task** as specified in plan git workflow
- ⚠️ **1:1 relationship** - One plan file per skill, always

**Remember:** The skill's effectiveness depends on:
1. Following the plan systematically
2. Clarity and completeness of instructions in SKILL.md
3. Proper git workflow and commits
4. Validation at each stage

Write as if you're explaining to another AI exactly what to do and how to do it.
