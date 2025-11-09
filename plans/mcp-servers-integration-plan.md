# MCP Servers Integration Plan

**Date:** 2025-11-09
**Branch:** `claude/add-mcp-servers-011CUx4Zb2nTGRwv7NhY39VY`
**Status:** In Progress

## Overview

Add Model Context Protocol (MCP) server configurations to the agent-skills repository, enabling Claude Code Agent to integrate with external tools and services. This implementation will support 7 MCP servers across development, design, project management, and cloud infrastructure domains.

## Objectives

1. Configure project-level MCP servers for team collaboration
2. Support environment-based secrets management via .env file
3. Provide comprehensive documentation for setup and usage
4. Follow repository's plan-first workflow and conventions

## MCP Servers to Implement

### 1. Sequential Thinking
- **Purpose:** Structured problem-solving through dynamic thinking processes
- **Package:** `@modelcontextprotocol/server-sequential-thinking`
- **Auth:** None required
- **Use Cases:** Complex reasoning, multi-step problem solving

### 2. Context7
- **Purpose:** Up-to-date code documentation for LLMs
- **Package:** `@upstash/context7-mcp`
- **Auth:** Optional API key (`CONTEXT7_API_KEY`)
- **Use Cases:** Real-time documentation, library reference

### 3. GitHub
- **Purpose:** Repository management, issues, PRs, code search
- **Package:** GitHub official MCP server (Go-based)
- **Auth:** OAuth via api.githubcopilot.com/mcp or personal token
- **Use Cases:** Code review, issue tracking, PR management

### 4. Playwright
- **Purpose:** Browser automation and web testing
- **Package:** `@playwright/mcp` (Microsoft official) or `@executeautomation/playwright-mcp-server`
- **Auth:** None required
- **Environment Variables:** Optional (DEBUG, HEADLESS, PORT)
- **Use Cases:** E2E testing, web scraping, UI automation

### 5. Linear
- **Purpose:** Project management and issue tracking
- **Package:** `linear-mcp-server`
- **Auth:** Required (`LINEAR_API_KEY`)
- **Use Cases:** Task management, sprint planning, issue tracking

### 6. Figma
- **Purpose:** Design file access and design-to-code workflows
- **Package:** `figma-developer-mcp`
- **Auth:** Required (`FIGMA_API_KEY`)
- **Use Cases:** Design implementation, design system access

### 7. Azure MCP Server
- **Purpose:** Azure service integration and management
- **Package:** `@azure/mcp`
- **Auth:** Required service principal (`AZURE_TENANT_ID`, `AZURE_CLIENT_ID`, `AZURE_CLIENT_SECRET`)
- **Use Cases:** Cloud resource management, Azure DevOps integration

## Technical Architecture

### Configuration Approach

**Project-Scope Configuration:**
- File: `.mcp.json` in repository root
- Scope: Team collaboration, shared across all team members
- Version Control: Committed to repository
- Secrets: Referenced via environment variables, not hardcoded

**Environment Management:**
- File: `.env` (gitignored, local only)
- File: `.env.example` (committed, template)
- Purpose: Manage API keys, tokens, and secrets

### File Structure

```
agent-skills/
├── .mcp.json                    # MCP server configurations
├── .env.example                 # Environment variable template
├── .env                         # Local secrets (gitignored)
├── .gitignore                   # Updated to exclude .env
├── MCP_SERVERS.md               # Comprehensive documentation
├── README.md                    # Updated with MCP references
└── plans/
    └── mcp-servers-integration-plan.md
```

## Implementation Tasks

### Task 1: Create .mcp.json Configuration

Create project-level MCP configuration with all 7 servers:

```json
{
  "mcpServers": {
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"]
    },
    "context7": {
      "command": "npx",
      "args": ["-y", "@upstash/context7-mcp@latest"],
      "env": {
        "CONTEXT7_API_KEY": "${CONTEXT7_API_KEY}"
      }
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_TOKEN": "${GITHUB_TOKEN}"
      }
    },
    "playwright": {
      "command": "npx",
      "args": ["-y", "@playwright/mcp@latest"],
      "env": {
        "DEBUG": "${PLAYWRIGHT_DEBUG:-false}",
        "HEADLESS": "${PLAYWRIGHT_HEADLESS:-true}"
      }
    },
    "linear": {
      "command": "npx",
      "args": ["-y", "linear-mcp-server"],
      "env": {
        "LINEAR_API_KEY": "${LINEAR_API_KEY}"
      }
    },
    "figma": {
      "command": "npx",
      "args": ["-y", "figma-developer-mcp", "--stdio"],
      "env": {
        "FIGMA_API_KEY": "${FIGMA_API_KEY}"
      }
    },
    "azure": {
      "command": "npx",
      "args": ["-y", "@azure/azure-mcp"],
      "env": {
        "AZURE_TENANT_ID": "${AZURE_TENANT_ID}",
        "AZURE_CLIENT_ID": "${AZURE_CLIENT_ID}",
        "AZURE_CLIENT_SECRET": "${AZURE_CLIENT_SECRET}"
      }
    }
  }
}
```

### Task 2: Create .env.example Template

Provide template with all required environment variables:

```bash
# Context7 (Optional - enables API features)
CONTEXT7_API_KEY=your_context7_api_key_here

# GitHub (Required for GitHub MCP)
GITHUB_TOKEN=ghp_your_github_personal_access_token

# Playwright (Optional - defaults provided)
PLAYWRIGHT_DEBUG=false
PLAYWRIGHT_HEADLESS=true

# Linear (Required for Linear MCP)
LINEAR_API_KEY=lin_api_your_linear_api_key_here

# Figma (Required for Figma MCP)
FIGMA_API_KEY=your_figma_personal_access_token

# Azure (Required for Azure MCP)
AZURE_TENANT_ID=your_azure_tenant_id
AZURE_CLIENT_ID=your_azure_client_id
AZURE_CLIENT_SECRET=your_azure_client_secret
```

### Task 3: Create MCP_SERVERS.md Documentation

Comprehensive guide covering:
- Overview of MCP and its benefits
- Server descriptions and capabilities
- Setup instructions (step-by-step)
- Environment variable configuration
- API key/token generation guides
- Usage examples for each server
- Troubleshooting common issues
- Security best practices

### Task 4: Update .gitignore

Add `.env` to gitignore to prevent accidental secret commits:

```gitignore
# Environment files with secrets
.env
.env.local
```

### Task 5: Update README.md

Add MCP servers section with:
- Brief introduction to MCP integration
- Link to MCP_SERVERS.md for detailed documentation
- Quick setup instructions

### Task 6: Review and Validation

- Verify all MCP server packages exist and are current
- Validate JSON syntax in .mcp.json
- Ensure environment variables follow naming conventions
- Check documentation completeness and accuracy
- Verify .gitignore properly excludes .env

### Task 7: Git Commit and Push

- Stage all changes
- Commit with descriptive message
- Push to branch `claude/add-mcp-servers-011CUx4Zb2nTGRwv7NhY39VY`

## Success Criteria

- [ ] .mcp.json configuration is valid and complete
- [ ] .env.example provides clear template for all secrets
- [ ] .env is properly gitignored
- [ ] MCP_SERVERS.md provides comprehensive documentation
- [ ] README.md references MCP integration
- [ ] All 7 MCP servers are configured correctly
- [ ] Environment variables use proper naming conventions
- [ ] Documentation includes API key generation instructions
- [ ] Configuration follows Claude Code MCP best practices
- [ ] Changes committed and pushed to correct branch

## Security Considerations

1. **Never commit secrets:** All API keys and tokens in .env file only
2. **Environment variable references:** Use `${VAR_NAME}` syntax in .mcp.json
3. **Least privilege:** Document minimum required permissions for each API key
4. **Token rotation:** Include guidance on regular token rotation
5. **Shared secrets:** Team should use shared secret management (e.g., 1Password, Azure Key Vault)

## Dependencies

- Node.js/npm (for npx commands)
- Claude Code with MCP support
- API keys/tokens from respective services (user-generated)

## References

- Model Context Protocol Docs: https://modelcontextprotocol.io/
- MCP Servers Repository: https://github.com/modelcontextprotocol/servers
- Claude Code MCP Guide: https://docs.claude.com/en/docs/claude-code/mcp
- GitHub MCP Server: https://github.blog/ai-and-ml/generative-ai/a-practical-guide-on-how-to-use-the-github-mcp-server/
- Azure MCP Docs: https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/

## Timeline

- Planning: 30 minutes ✓
- Implementation: 60 minutes
- Testing: 15 minutes
- Documentation: 30 minutes
- Total: ~2.5 hours

## Notes

- This follows the repository's plan-first workflow
- MCP servers run as separate processes via npx
- Claude Code loads .mcp.json automatically from project root
- Environment variables loaded from .env in working directory
- Some servers (Sequential Thinking, Playwright) work without authentication
- Others require API keys that users must generate themselves
