# Agent Skills

This repository contains the **Agent Skills Specification** and templates for creating skills that extend Claude's capabilities for specialized tasks.

## What Are Skills?

Skills are folders of instructions, scripts, and resources that agents can discover and load dynamically to perform better at specific tasks. They enable Claude to:

- Customize workflows for company-specific processes
- Handle specialized data analysis procedures
- Automate personal tasks with domain-specific knowledge
- Apply brand guidelines and style requirements consistently

## Repository Contents

This repository provides:

- **[Agent Skills Specification](agent_skills_spec.md)** - The complete specification for creating agent skills
- **[template-skill/](template-skill/)** - A minimal skill template to get started
- **[plans/](plans/)** - Example skill development plans

## Quick Start

### Creating a Skill

A minimal skill requires just a folder with a `SKILL.md` file:

```
my-skill/
  └── SKILL.md
```

The `SKILL.md` file must include YAML frontmatter with two required fields:

```yaml
---
name: my-skill
description: Description of what the skill does and when Claude should use it
---

# Instructions for Claude

Your skill instructions go here in markdown format.
```

### Required Fields

- **name**: The skill name in hyphen-case (lowercase Unicode alphanumeric + hyphen)
  - Must match the directory name
- **description**: Clear description of what the skill does and when to use it

### Optional Fields

- **license**: The license applied to the skill
- **allowed-tools**: List of tools pre-approved to run (Claude Code only)
- **metadata**: Custom key-value pairs for client-specific properties

## Using Skills

Skills can be accessed through:

- **Claude Code**: Install via the plugin marketplace
- **Claude.ai**: Available for paid users through skill upload
- **Claude API**: Integrate via the Skills API

## Examples and Inspiration

For a comprehensive collection of example skills, see the official [Anthropic Skills Repository](https://github.com/anthropics/skills), which includes:

**Creative & Design:**
- Algorithmic art generation
- Canvas design for PNG/PDF
- Slack GIF creation

**Development & Technical:**
- HTML artifact building
- MCP server creation
- Web application testing

**Enterprise & Communication:**
- Brand guideline application
- Internal communications
- Document manipulation (DOCX, PDF, PPTX, XLSX)

## Specification

For complete details on the Agent Skills specification, see [agent_skills_spec.md](agent_skills_spec.md).

## Version

Agent Skills Spec 1.0 (2025-10-16)

## License

See [LICENSE](LICENSE) for details.

## Resources

- [Official Anthropic Skills Repository](https://github.com/anthropics/skills)
- [Agent Skills Specification](agent_skills_spec.md)
- [Template Skill](template-skill/)

---

**Note**: Skills are provided for demonstration and educational purposes. Always test thoroughly before using in production environments.
