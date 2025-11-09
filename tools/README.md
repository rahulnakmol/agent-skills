# Agent Skills Tools

Utilities for managing and packaging Claude skills.

## Available Tools

### package-skill.sh

Package a skill directory into a `.skill` file for use with Claude Chat (web) or Claude Code.

**Usage:**
```bash
# Package current directory
./tools/package-skill.sh

# Package specific skill
./tools/package-skill.sh ms-enterprise-architect

# Package from anywhere
cd ms-enterprise-architect
../tools/package-skill.sh
```

**What it does:**
- Validates skill directory (checks for SKILL.md)
- Creates compressed archive with .skill extension
- Excludes development artifacts (.git, tests, plans, etc.)
- Outputs to parent directory
- Shows package statistics

**What gets excluded:**
- `.git/` directory
- `.DS_Store` files
- `*.skill` files (prevents recursion)
- `node_modules/`
- `tests/` directory
- `plans/` directory
- `.skillrc` metadata file

**Output:**
- File: `../skill-name.skill`
- Format: tar.gz with .skill extension
- Location: Parent directory of skill

## Adding New Tools

When creating new tools:

1. Add the script to this directory
2. Make it executable: `chmod +x toolname.sh`
3. Document in this README
4. Use consistent style (see package-skill.sh as reference)

## Tool Standards

All tools should:
- Include header comment with purpose and usage
- Accept help flag: `-h` or `--help`
- Provide colored output for better UX
- Handle errors gracefully
- Validate inputs before processing
- Show progress and final status
