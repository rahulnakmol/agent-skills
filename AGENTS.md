# AGENTS.md - Guide for AI Coding Assistants

This document provides instructions for AI coding assistants (Claude Code, OpenAI Codex, etc.) on how to use this repository to create and develop Claude Agent Skills.

## Purpose

This repository is a **development environment for creating Claude Agent Skills**. It provides:
- The official Agent Skills Specification (`agent_skills_spec.md`)
- A template skill structure (`template-skill/`)
- Examples and development plans (`plans/`)
- Guidelines for building effective skills

## Quick Reference: Creating a New Skill

When asked to create a new Claude skill, follow these steps:

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

### Step 1: Understand the Request
- Clarify the skill's purpose and scope
- Identify the target use case
- Determine required tools and resources

### Step 2: Plan the Skill Structure
- Decide if additional files are needed (scripts, templates, data files)
- Plan the instruction flow
- Identify edge cases and error scenarios

### Step 3: Create the Skill
```bash
# Create directory
mkdir my-new-skill

# Create SKILL.md
cat > my-new-skill/SKILL.md << 'EOF'
---
name: my-new-skill
description: Description of what this skill does and when to use it
---

# Instructions

Your detailed instructions here...
EOF
```

### Step 4: Add Supporting Files (if needed)
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

### Step 5: Test and Validate
- Verify SKILL.md has valid YAML frontmatter
- Check that `name` matches directory name
- Ensure description is clear and actionable
- Test that instructions are complete and unambiguous

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

- [ ] Directory name is in hyphen-case
- [ ] SKILL.md exists and is valid
- [ ] YAML frontmatter is properly formatted
- [ ] `name` field matches directory name exactly
- [ ] `description` is clear and actionable
- [ ] Markdown instructions are complete
- [ ] Examples are provided where helpful
- [ ] Any additional files are properly referenced
- [ ] Tool usage is documented
- [ ] Error handling is addressed

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
- `agent_skills_spec.md` - Full specification
- `template-skill/` - Minimal template
- `plans/` - Development plans and examples
- `README.md` - User-facing documentation

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

1. **Clarify requirements:** What should the skill do? When should it be used?
2. **Choose a name:** Use hyphen-case, be descriptive
3. **Create directory:** `mkdir skill-name`
4. **Create SKILL.md:** Follow the template structure above
5. **Write instructions:** Be clear, complete, and practical
6. **Add resources:** Include scripts, templates, or data as needed
7. **Validate:** Check structure, naming, and completeness
8. **Test:** Verify the skill works as intended

**Remember:** The skill's effectiveness depends on the clarity and completeness of the instructions in SKILL.md. Write as if you're explaining to another AI exactly what to do and how to do it.
