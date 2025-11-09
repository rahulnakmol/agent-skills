# MCP Servers Configuration Guide

This repository includes Model Context Protocol (MCP) server configurations that extend Claude Code Agent's capabilities with external tools and services.

## Table of Contents

- [Overview](#overview)
- [Quick Start](#quick-start)
- [Available MCP Servers](#available-mcp-servers)
- [Setup Instructions](#setup-instructions)
- [API Key Generation](#api-key-generation)
- [Usage Examples](#usage-examples)
- [Troubleshooting](#troubleshooting)
- [Security Best Practices](#security-best-practices)

## Overview

### What is MCP?

Model Context Protocol (MCP) is an open protocol that enables AI assistants like Claude to securely connect to external data sources and tools. MCP servers act as bridges between Claude and various services, allowing Claude to:

- Access real-time information and documentation
- Interact with project management tools
- Automate browser testing
- Manage cloud resources
- Work with design files
- Perform version control operations

### Benefits

- **Unified Workflow:** Work across multiple tools in a single conversation
- **Real-time Data:** Access up-to-date information beyond Claude's training data
- **Automation:** Automate repetitive tasks across different platforms
- **Team Collaboration:** Share configurations across your team via version control

## Quick Start

### 1. Copy Environment Template

```bash
cp .env.example .env
```

### 2. Add Your API Keys

Edit `.env` and add your API keys and tokens. See [API Key Generation](#api-key-generation) for detailed instructions.

### 3. Start Using

Claude Code will automatically load the `.mcp.json` configuration from this repository. MCP servers will be available in your Claude Code sessions.

### 4. Verify Setup

Ask Claude: "What MCP servers are available?" to verify the configuration.

## Available MCP Servers

This repository is configured with 7 MCP servers:

| Server | Purpose | Authentication | Package |
|--------|---------|----------------|---------|
| **Sequential Thinking** | Structured problem-solving and reasoning | None | `@modelcontextprotocol/server-sequential-thinking` |
| **Context7** | Up-to-date code documentation | Optional API key | `@upstash/context7-mcp` |
| **GitHub** | Repository, issues, PRs management | Personal Access Token | `@modelcontextprotocol/server-github` |
| **Playwright** | Browser automation and testing | None | `@playwright/mcp` |
| **Linear** | Project management and issues | API Key | `linear-mcp-server` |
| **Figma** | Design file access | Personal Access Token | `figma-developer-mcp` |
| **Azure** | Azure services management | Service Principal | `@azure/azure-mcp` |

### Detailed Server Descriptions

#### 1. Sequential Thinking

Enhances Claude's reasoning capabilities with structured, step-by-step problem-solving. Useful for complex architectural decisions, debugging, and multi-step workflows.

**Capabilities:**
- Dynamic thinking processes
- Reflective problem-solving
- Structured reasoning chains
- No configuration required

**Usage Example:**
> "Use sequential thinking to analyze the trade-offs between microservices and monolithic architecture for our e-commerce platform."

#### 2. Context7

Provides real-time access to library documentation and code examples, bridging the gap between Claude's training data and current library versions.

**Capabilities:**
- Up-to-date documentation for 1000+ libraries
- Code examples and API references
- Version-specific documentation
- Works without API key (enhanced features with key)

**Usage Example:**
> "Show me the latest Next.js 15 App Router documentation for implementing server actions."

#### 3. GitHub

Enables comprehensive GitHub operations beyond git commands, including issue tracking, pull request management, and repository administration.

**Capabilities:**
- Search repositories and code
- Create and manage issues
- Review and merge pull requests
- Manage GitHub Actions workflows
- Access repository insights

**Usage Example:**
> "Find all open issues in this repository labeled 'bug' that were created in the last week."

#### 4. Playwright

Provides browser automation for testing, web scraping, and UI validation tasks.

**Capabilities:**
- Cross-browser testing (Chrome, Firefox, Safari, Edge)
- Screenshot capture
- Page interaction and navigation
- Network request interception
- Accessibility testing
- Headless or headed mode

**Usage Example:**
> "Use Playwright to navigate to our staging site, login as a test user, and verify the checkout flow works correctly."

#### 5. Linear

Integrates with Linear for project management, enabling seamless task creation and tracking directly from Claude conversations.

**Capabilities:**
- Search and filter issues
- Create and update tasks
- Manage projects and cycles
- Add comments and labels
- Track issue status

**Usage Example:**
> "Create a Linear issue for implementing user authentication with title 'Add OAuth 2.0 support' and assign it to the backend team."

#### 6. Figma

Connects to Figma design files, enabling design-to-code workflows and design system management.

**Capabilities:**
- Read Figma file data
- Access design tokens
- Extract component specifications
- View design properties and styles
- Support for design systems

**Usage Example:**
> "Show me the button component specifications from our Figma design system and help me implement it in React."

#### 7. Azure

Provides integration with Azure services for cloud resource management and Azure DevOps operations.

**Capabilities:**
- Azure resource management
- Azure DevOps integration
- Service monitoring and management
- Infrastructure as Code operations
- Multi-service orchestration

**Usage Example:**
> "List all Azure App Services in the production resource group and show their current status."

## Setup Instructions

### Prerequisites

- Node.js 16+ installed (for npx commands)
- Claude Code with MCP support
- API keys/tokens from respective services (see below)

### Step-by-Step Setup

#### 1. Clone or Access Repository

Ensure you're in the agent-skills repository:

```bash
cd /path/to/agent-skills
```

#### 2. Create Environment File

```bash
cp .env.example .env
```

#### 3. Configure Environment Variables

Edit `.env` with your preferred editor:

```bash
# Use your preferred editor
nano .env
# or
vim .env
# or
code .env
```

Add your API keys (see [API Key Generation](#api-key-generation) below).

#### 4. Verify Configuration

The `.mcp.json` file in the repository root is already configured. Claude Code will automatically detect and load it.

#### 5. Restart Claude Code

If Claude Code is running, restart it to load the new MCP server configurations.

## API Key Generation

### Context7 (Optional)

Context7 works without an API key for basic features. For enhanced capabilities:

1. Visit https://context7.com
2. Sign up or log in
3. Navigate to API settings
4. Generate a new API key
5. Add to `.env`: `CONTEXT7_API_KEY=your_key_here`

### GitHub (Required)

1. Go to GitHub → Settings → Developer settings
2. Click "Personal access tokens" → "Tokens (classic)"
3. Click "Generate new token (classic)"
4. Name: "Claude Code MCP Server"
5. Select scopes:
   - `repo` (Full control of private repositories)
   - `read:org` (Read org and team membership)
   - `read:user` (Read user profile data)
   - `workflow` (Update GitHub Action workflows)
6. Click "Generate token"
7. Copy the token (starts with `ghp_`)
8. Add to `.env`: `GITHUB_TOKEN=ghp_your_token_here`

**Security Note:** Store this token securely. It provides access to your repositories.

### Linear (Required)

1. Open Linear → Settings (bottom left)
2. Navigate to "API" section
3. Click "Personal API Keys"
4. Click "Create new key"
5. Name: "Claude Code MCP"
6. Set permissions (recommend: Read and Write)
7. Click "Create"
8. Copy the API key (starts with `lin_api_`)
9. Add to `.env`: `LINEAR_API_KEY=lin_api_your_key_here`

### Figma (Required)

1. Open Figma
2. Click your profile → Settings
3. Navigate to "Account" tab
4. Scroll to "Personal Access Tokens"
5. Click "Generate new token"
6. Name: "Claude Code MCP"
7. Set expiration (recommend: 90 days, then rotate)
8. Click "Generate"
9. Copy the token (starts with `figd_`)
10. Add to `.env`: `FIGMA_API_KEY=your_token_here`

### Azure (Required - Service Principal)

Creating an Azure Service Principal requires several steps:

#### Option 1: Using Azure Portal

1. Sign in to Azure Portal (https://portal.azure.com)
2. Navigate to "Azure Active Directory"
3. Click "App registrations" → "New registration"
4. Name: "Claude Code MCP Server"
5. Click "Register"
6. Note the **Application (client) ID** → this is `AZURE_CLIENT_ID`
7. Note the **Directory (tenant) ID** → this is `AZURE_TENANT_ID`
8. Click "Certificates & secrets" → "New client secret"
9. Description: "Claude Code MCP"
10. Expiration: Choose based on your security policy
11. Click "Add"
12. Copy the **Value** (not Secret ID) → this is `AZURE_CLIENT_SECRET`
13. Assign appropriate RBAC roles to the service principal

#### Option 2: Using Azure CLI

```bash
# Login to Azure
az login

# Create service principal
az ad sp create-for-rbac --name "Claude-Code-MCP" --role contributor

# Output will include:
# appId → AZURE_CLIENT_ID
# password → AZURE_CLIENT_SECRET
# tenant → AZURE_TENANT_ID
```

Add to `.env`:
```bash
AZURE_TENANT_ID=your_tenant_id
AZURE_CLIENT_ID=your_client_id
AZURE_CLIENT_SECRET=your_client_secret
```

**Security Note:** Service principals have powerful access. Follow the principle of least privilege.

### Playwright (Optional)

Playwright works without configuration. Optional environment variables for customization:

```bash
PLAYWRIGHT_DEBUG=false        # Set to true for debug output
PLAYWRIGHT_HEADLESS=true      # Set to false to see browser UI
```

## Usage Examples

### Example 1: Feature Development Workflow

Combining Linear, Figma, GitHub, and Playwright for end-to-end feature development:

```
User: "I need to implement the new user profile page. Here's the Linear issue: PRJ-123"

Claude uses:
1. Linear MCP → Fetch issue details and requirements
2. Figma MCP → Access design specifications
3. GitHub MCP → Create feature branch
4. [Implementation happens]
5. Playwright MCP → Test the new page
6. GitHub MCP → Create pull request
7. Linear MCP → Update issue status
```

### Example 2: Documentation Research

Using Context7 and Sequential Thinking:

```
User: "How do I implement real-time subscriptions in my Next.js app with Supabase?"

Claude uses:
1. Context7 MCP → Get latest Supabase documentation
2. Context7 MCP → Get latest Next.js documentation
3. Sequential Thinking MCP → Reason through implementation approach
4. [Provides step-by-step implementation]
```

### Example 3: Azure Infrastructure Management

Using Azure MCP and GitHub:

```
User: "Review our Azure infrastructure and suggest optimizations"

Claude uses:
1. Azure MCP → List all resources across subscriptions
2. Azure MCP → Check resource utilization
3. Sequential Thinking MCP → Analyze cost optimization opportunities
4. GitHub MCP → Create infrastructure documentation
```

### Example 4: Design Implementation

Using Figma and Playwright:

```
User: "Implement the button component from our Figma design system and verify it matches the design"

Claude uses:
1. Figma MCP → Extract button component specifications
2. [Implement component]
3. Playwright MCP → Take screenshot of implementation
4. [Compare with Figma design]
```

## Troubleshooting

### Common Issues

#### MCP Server Not Loading

**Symptom:** Claude doesn't recognize MCP commands

**Solutions:**
1. Verify `.mcp.json` exists in repository root
2. Check JSON syntax is valid (no trailing commas, proper quotes)
3. Restart Claude Code
4. Check Claude Code logs for errors

#### Authentication Errors

**Symptom:** "Authentication failed" or "Invalid token" errors

**Solutions:**
1. Verify environment variables are set correctly in `.env`
2. Check token hasn't expired (especially Figma, Azure)
3. Verify token permissions are sufficient
4. Regenerate token if needed
5. Ensure no extra spaces in `.env` file

#### npx Package Installation Fails

**Symptom:** "Package not found" or installation errors

**Solutions:**
1. Check internet connection
2. Verify Node.js and npm are installed: `node --version && npm --version`
3. Clear npm cache: `npm cache clean --force`
4. Try manual installation: `npm install -g [package-name]`
5. Check if behind corporate proxy (set HTTP_PROXY)

#### Environment Variables Not Loading

**Symptom:** Variables show as `${VAR_NAME}` instead of actual values

**Solutions:**
1. Ensure `.env` file is in the same directory as `.mcp.json`
2. Check `.env` file format (no spaces around `=`)
3. Restart Claude Code after updating `.env`
4. Verify Claude Code working directory is the repository root

#### Playwright Browser Launch Fails

**Symptom:** "Failed to launch browser" error

**Solutions:**
1. Install Playwright browsers: `npx playwright install`
2. For headless issues, set `PLAYWRIGHT_HEADLESS=true`
3. Check system dependencies (especially on Linux)
4. Try different browser: add `--browser firefox` to args

### Debug Mode

Enable debug logging for troubleshooting:

```bash
# Add to .env
PLAYWRIGHT_DEBUG=true
DEBUG=*
```

### Checking MCP Server Status

Ask Claude:
> "List all available MCP servers and their status"

## Security Best Practices

### 1. Secret Management

- **Never commit `.env`** to version control (already in `.gitignore`)
- Use environment-specific `.env` files (`.env.development`, `.env.production`)
- Consider using secret managers for team environments:
  - Azure Key Vault
  - AWS Secrets Manager
  - HashiCorp Vault
  - 1Password for Teams

### 2. Token Permissions

Follow the **principle of least privilege**:

- **GitHub:** Only grant scopes you need (e.g., avoid `admin:org` if unnecessary)
- **Linear:** Use read-only access if you only need to view issues
- **Figma:** Limit to specific teams/projects if possible
- **Azure:** Use specific RBAC roles, not Owner or Contributor unless required

### 3. Token Rotation

Regularly rotate API keys and tokens:

- **GitHub:** Rotate every 90 days
- **Linear:** Rotate every 90 days
- **Figma:** Rotate every 90 days
- **Azure:** Rotate client secrets every 90 days
- **Context7:** Rotate annually

Set calendar reminders for rotation dates.

### 4. Monitoring

- Enable audit logging where available (GitHub, Azure, Linear)
- Monitor API key usage for unusual activity
- Set up alerts for authentication failures
- Review access logs regularly

### 5. Shared Team Access

For team environments:

- Use shared secret manager instead of individual `.env` files
- Document which team members have access to which services
- Implement service accounts instead of personal tokens where possible
- Use team/organization tokens instead of personal tokens when available

### 6. Access Revocation

If a token is compromised:

1. **Immediately revoke** the token in the service
2. Generate a new token
3. Update `.env` with new token
4. Review audit logs for unauthorized access
5. Notify team if in a shared environment

### 7. Environment File Security

```bash
# Verify .env is not tracked
git status

# Verify .env is in .gitignore
cat .gitignore | grep .env

# Set restrictive permissions (Unix/Mac)
chmod 600 .env
```

## Additional Resources

### Official Documentation

- [Model Context Protocol](https://modelcontextprotocol.io/)
- [Claude Code MCP Guide](https://docs.claude.com/en/docs/claude-code/mcp)
- [MCP Servers Repository](https://github.com/modelcontextprotocol/servers)

### MCP Server Documentation

- [Sequential Thinking](https://github.com/modelcontextprotocol/servers/tree/main/src/sequentialthinking)
- [Context7](https://github.com/upstash/context7)
- [GitHub MCP](https://github.blog/ai-and-ml/generative-ai/a-practical-guide-on-how-to-use-the-github-mcp-server/)
- [Playwright MCP](https://github.com/microsoft/playwright-mcp)
- [Linear API Docs](https://linear.app/docs/graphql/working-with-the-graphql-api)
- [Figma API Docs](https://help.figma.com/hc/en-us/articles/8085703771159)
- [Azure MCP Server](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/)

### Community Resources

- [MCP Servers Catalog](https://mcpservers.org/)
- [Awesome MCP Servers](https://github.com/punkpeye/awesome-mcp-servers)
- [MCP Community Discord](https://discord.gg/modelcontextprotocol)

## Support

For issues specific to this repository's MCP configuration, please open an issue.

For MCP server-specific issues, refer to the individual server repositories linked above.

---

**Last Updated:** 2025-11-09
**Configuration Version:** 1.0.0
**MCP Servers:** 7
