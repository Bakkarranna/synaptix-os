# Synaptix OS — Ultimate Setup Guide

> **Version:** 1.0  
> **Purpose:** Reproduce the full Synaptix OS development environment on any Windows machine.  
> **Can be used as:** A prompt for agentic tools (opencode, hermes agent, cline, etc.) — give this file to your agent and it will execute the entire setup automatically.

---

## Table of Contents

1. [Prerequisites](#1-prerequisites)
2. [Core Agentic Tools](#2-core-agentic-tools)
3. [Research & Social Media Tools](#3-research--social-media-tools)
4. [Development Tools](#4-development-tools)
5. [API Keys & Authentication](#5-api-keys--authentication)
6. [Environment Configuration](#6-environment-configuration)
7. [Cloning the Repository & Obsidian Vault](#7-cloning-the-repository--obsidian-vault)
8. [Obsidian Vault Blueprint](#8-obsidian-vault-blueprint)
9. [Synaptix Studio Operational Files](#9-synaptix-studio-operational-files)
10. [Agentic Tool Integration](#10-agentic-tool-integration)
11. [Verification Checklist](#11-verification-checklist)
12. [Prompt Block — Feed This to Your Agent](#12-prompt-block--feed-this-to-your-agent)

---

## 1. Prerequisites

### 1.1 Node.js v22.17.0

```powershell
# Download and install from https://nodejs.org/ (v22.x LTS)
# Install to: D:\Dev\nodejs\

# Verify
node --version   # v22.17.0
npm --version    # 10.9.2
```

### 1.2 Python 3.11+

```powershell
# Download from https://www.python.org/downloads/
# Verify
python --version   # Python 3.11.15
```

### 1.3 Git 2.54+

```powershell
# Download from https://git-scm.com/downloads/win
# Verify
git --version   # git version 2.54.0.windows.1
```

### 1.4 GitHub CLI (gh)

```powershell
# Download from https://cli.github.com/
# Authenticate
gh auth login
# Verify
gh --version
```

### 1.5 Chrome Browser

Required for OpenCLI sessions and agent-reach browser-based channels.

---

## 2. Core Agentic Tools

### 2.1 opencode

The primary agentic IDE for software engineering tasks.

```powershell
# Install
npm install -g @opencode-ai/cli

# Or install from local package
# opencode is at: C:\Users\<user>\.config\opencode

# Configuration file:
# C:\Users\<user>\.config\opencode\opencode.jsonc
```

**Config (`opencode.jsonc`):**
```jsonc
{
  "$schema": "https://opencode.ai/config.json"
}
```

**Installed skills (from `.config\opencode\node_modules`):**
- `@opencode-ai/*` — opencode packages
- Skills are loaded from the workspace `.opencode/` directory or skills-library

**Key directories:**
- Config: `%USERPROFILE%\.config\opencode\`
- Skills: `%USERPROFILE%\.config\opencode\node_modules\`

### 2.2 Hermes Agent (by Nous Research)

Advanced AI agent for autonomous task execution.

```powershell
# Hermes Agent is installed at:
# C:\Users\<user>\AppData\Local\hermes\hermes-agent\venv\Scripts\hermes.exe

# Add to PATH:
# C:\Users\<user>\AppData\Local\hermes\hermes-agent\venv\Scripts

# SOUL.md (personality config):
# C:\Users\<user>\AppData\Local\hermes\SOUL.md
```

**Installed skills** (at `%USERPROFILE%\AppData\Local\hermes\skills\`):
| Category | Skills |
|----------|--------|
| `apple/` | apple-notes, apple-reminders, findmy, imessage |
| `autonomous-ai-agents/` | claude-code, codex, hermes-agent, opencode (with references/) |
| `computer-use/` | computer-use |
| `creative/` | architecture-diagram (templates/), ascii-art, ascii-video (references/), baoyu-infographic (references/), claude-design, comfyui (references/, scripts/, tests/, workflows/), design-md (templates/), excalidraw, humanizer, manim-video, p5js, popular-web-designs, pretext, sketch, songwriting-and-ai-music, touchdesigner-mcp |
| `data-science/` | data-science |
| `dogfood/` | dogfood |
| `email/` | email |
| `github/` | github |
| `media/` | media |
| `mlops/` | mlops |
| `note-taking/` | note-taking |
| `productivity/` | productivity |
| `research/` | research |
| `smart-home/` | smart-home |
| `social-media/` | social-media |
| `software-development/` | software-development |
| `yuanbao/` | yuanbao |

**Config (`config.yaml`):**
```yaml
model:
  default: "moonshotai/kimi-k2.6"
  provider: "nvidia"
  base_url: "https://integrate.api.nvidia.com/v1"
```

### 2.3 Antigravity IDE

Electron-based IDE with AI agent integration.

```powershell
# Installed at: D:\Antigravity\
# Binary: D:\Antigravity\bin\antigravity.cmd or D:\Antigravity\bin\antigravity

# Launch
& "D:\Antigravity\Antigravity.exe"
```

### 2.4 OpenCLI

Universal CLI tool for 160+ website adapters (social media, search, shopping, etc.).

```powershell
# Install
npm install -g @jackwener/opencli

# The binary is at:
# D:\npm-global\opencli.cmd  (when prefix = D:\npm-global)
# or globally at %APPDATA%\npm\opencli.cmd

# Chrome profile binding (for authenticated sessions):
opencli chrome --profile-directory "Profile 1"
opencli session --name mysession

# Test
opencli web --query "test query"
```

**Chrome profile for sessions:** `uuqspdjr` (use Chrome's profile directory)

### 2.5 Cline

AI-assisted code generation and analysis tool.

```powershell
npm install -g cline
```

---

## 3. Research & Social Media Tools

### 3.1 agent-reach v1.5.0

Cross-platform research orchestration tool. Handles search across 15+ platforms.

```powershell
# Creates a Python virtual environment
# Installed with pip:
pip install agent-reach

# The venv is at: %USERPROFILE%\.agent-reach-venv\
# Wrapper script at: D:\agent-reach.cmd

# Verify
& "D:\agent-reach.cmd" doctor --json
```

**Agent-reach routes to these platforms (via OpenCLI, native CLI, or API):**

| Channel | Backend | Status |
|---------|---------|--------|
| Web Search | OpenCLI | Configured |
| Twitter/X | twitter-cli | Authenticated |
| Reddit | OpenCLI | Needs Chrome session |
| Facebook | OpenCLI | Needs Chrome session |
| Instagram | OpenCLI | Needs Chrome session |
| LinkedIn | linkedin-scraper-mcp | Configured |
| GitHub | gh CLI + gh CLI search | Configured |
| YouTube | yt-dlp | Configured |
| Bilibili | bili-cli | Configured |
| ProductHunt | OpenCLI | Available |
| Medium | OpenCLI | Available |
| V2EX | OpenCLI | Available |
| 小红书 (XiaoHongshu) | OpenCLI | Region-blocked in PK |

**Config locations:**
- `%USERPROFILE%\.agent-reach-venv\Lib\site-packages\agent_reach\`

### 3.2 twitter-cli v0.8.5

Dedicated Twitter/X research CLI.

```powershell
# Installed with agent-reach (bundled dependency)
# Binary: %USERPROFILE%\.agent-reach-venv\Scripts\twitter.exe

# Authentication via env vars:
# TWITTER_AUTH_TOKEN=<token>
# TWITTER_CT0=<ct0>

# Usage
twitter search "AI agents sales" --limit 20
twitter user "elonmusk" --tweets 10
```

### 3.3 LinkedIn Scraper MCP

MCP server for LinkedIn data extraction.

```powershell
# Installed in agent-reach venv:
# %USERPROFILE%\.agent-reach-venv\Scripts\linkedin-scraper-mcp.exe

# Also installed:
# %USERPROFILE%\.agent-reach-venv\Scripts\mcp-server-linkedin.exe
# %USERPROFILE%\.agent-reach-venv\Scripts\fastmcp.exe
```

### 3.4 bili-cli

Bilibili (Chinese video platform) CLI research tool.

```powershell
# Installed in agent-reach venv:
# %USERPROFILE%\.agent-reach-venv\Scripts\bili.exe
```

### 3.5 yt-dlp

YouTube video/audio download and research tool.

```powershell
# Install via winget or pip
winget install yt-dlp
# Or
pip install yt-dlp

# Usage
yt-dlp --get-description "https://youtube.com/watch?v=..."
```

### 3.6 Scrapling

Web scraping framework for advanced data extraction.

```powershell
pip install scrapling
```

---

## 4. Development Tools

### 4.1 mcporter v0.9.0

MCP (Model Context Protocol) server porter/bridge.

```powershell
npm install -g mcporter

# Config at: D:\synaptix_os\config\mcporter.json
```

### 4.2 pnpm

Fast, disk-space-efficient package manager.

```powershell
npm install -g pnpm
# Binary: %APPDATA%\npm\pnpm.cmd
```

### 4.3 Vercel CLI

Deployment platform for frontend apps.

```powershell
npm install -g vercel
# Binary: %APPDATA%\npm\vercel.cmd
```

### 4.4 ngrok

Tunnel for local development servers.

```powershell
npm install -g ngrok
```

### 4.5 TypeScript Compiler

```powershell
npm install -g typescript
# Binary: %APPDATA%\npm\tsc.cmd
```

---

## 5. API Keys & Authentication

### 5.1 Required API Keys

Service | Key / Token | Storage
--------|------------|--------
Groq AI | `<YOUR_GROQ_API_KEY>` | `.env` files
NVIDIA NIM | (NVIDIA_API_KEY) | Hermes `config.yaml`
OpenRouter | (OPENROUTER_API_KEY) | Hermes `.env`
Exa Search | (configured via mcporter) | mcporter config
Twitter/X | TWITTER_AUTH_TOKEN + TWITTER_CT0 | Environment variables

### 5.2 Environment Variables (.env)

Create `.env` files in these locations:
- `D:\synaptix_os\` (repo root)
- `%USERPROFILE%\AppData\Local\hermes\` (Hermes agent)

```env
# Groq
GROQ_API_KEY=<YOUR_GROQ_API_KEY>

# Twitter/X
TWITTER_AUTH_TOKEN=<your_token>
TWITTER_CT0=<your_ct0>

# GitHub
GITHUB_TOKEN=<your_github_token>

# Hermes Agent (optional if using config.yaml)
NVIDIA_API_KEY=<your_nvidia_key>
OPENROUTER_API_KEY=<your_openrouter_key>
```

### 5.3 GitHub Authentication

```powershell
gh auth login
# Follow browser login flow
```

### 5.4 Chrome Profile for OpenCLI Sessions

The Chrome profile `uuqspdjr` is bound to OpenCLI for authenticated browsing sessions. To set up:

```powershell
# 1. Find Chrome profile directory
# Typically: C:\Users\<user>\AppData\Local\Google\Chrome\User Data\Profile 1\

# 2. Bind to OpenCLI
opencli chrome --profile-directory "Profile 1"

# 3. Create a named session
opencli session --name mysession

# 4. Verify
opencli session --list
```

**Important:** Log into Reddit, Instagram, and Facebook in this Chrome profile for OpenCLI access to those platforms.

---

## 6. Environment Configuration

### 6.1 NPM Configuration

```powershell
# Set global install prefix to D:\npm-global (to save C: drive space)
npm config set prefix "D:\npm-global"
npm config set cache "D:\npm-cache"

# Verify
npm config list
# Should show:
# prefix = "D:\\npm-global"
# cache = "D:\\npm-cache"
```

### 6.2 PATH Setup

Add these to your User PATH environment variable:

```
D:\npm-global          # npm global packages (opencli.cmd, etc.)
D:\npm-global\bin      # npm bins
D:\Dev\nodejs\         # Node.js
%USERPROFILE%\.agent-reach-venv\Scripts  # agent-reach, twitter, linkedin-scraper-mcp
%USERPROFILE%\AppData\Local\hermes\hermes-agent\venv\Scripts  # hermes agent
%USERPROFILE%\AppData\Roaming\npm  # fallback npm global
D:\Antigravity\bin     # Antigravity CLI
```

**Apply via PowerShell:**
```powershell
# Add to PATH (run as admin or user-level)
[Environment]::SetEnvironmentVariable("Path", "$env:Path;D:\npm-global;D:\npm-global\bin;D:\Dev\nodejs;$env:USERPROFILE\.agent-reach-venv\Scripts;$env:USERPROFILE\AppData\Local\hermes\hermes-agent\venv\Scripts;D:\Antigravity\bin", "User")
```

### 6.3 Git Configuration

```powershell
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
git config --global core.autocrlf true
```

### 6.4 .gitignore

The repo uses a `.gitignore` that excludes:
- `Thumbs.db`, `.DS_Store`, `desktop.ini`, `*.log`
- `.env`, `.env.local`, `.env.*.local`
- `node_modules/`, `.pnp`, `.pnp.js`
- `.idea/`, `*.swp`, `*.swo`, `.vscode/`
- `.obsidian/workspace.json`

**Note:** The entire `ObsidianVault/` directory is NOT in `.gitignore`. It's intentionally tracked for team access.

---

## 7. Cloning the Repository & Obsidian Vault

### 7.1 Initial Clone

```powershell
# Clone the repo
git clone https://github.com/Bakkarranna/synaptix-os.git D:\synaptix_os

# The ObsidianVault is already inside the repo.
# Do NOT use submodules — the vault is part of the main branch.
```

### 7.2 Handling the Obsidian Vault Size

The ObsidianVault is large (~thousands of files, hundreds of MBs). For initial setup:

**Option A: Full clone (recommended for team members with good bandwidth)**
```powershell
git clone https://github.com/Bakkarranna/synaptix-os.git D:\synaptix_os
# This will download everything including the vault
```

**Option B: Sparse checkout (if repo is too large)**
```powershell
git clone --filter=blob:none --sparse https://github.com/Bakkarranna/synaptix-os.git D:\synaptix_os
cd D:\synaptix_os
git sparse-checkout add 0*_*.md COMPETITOR_LANDSCAPE.md VIRAL_CONTENT_PLAYBOOK.md creator_research.md SYNAPTIX_STUDIO_SOCIAL_PLAYBOOK.md cold_outreach_research.md sales-research-compendium.md marketing_research_comprehensive.md
# This gives you the Synaptix Studio files only
# Then later pull the vault files:
git sparse-checkout add ObsidianVault/skills-library/web-design/
```

**Option C: Pull vault separately after cloning core files**
```powershell
# Clone core files first (via sparse checkout)
# Then at any time, expand to include vault:
git sparse-checkout add ObsidianVault/
```

### 7.3 Keep Branch Up to Date

```powershell
git pull origin main
```

---

## 8. Obsidian Vault Blueprint

The Obsidian vault at `D:\synaptix_os\ObsidianVault\` is organized into skill collections and knowledge bases. Here is the complete structure:

### 8.1 Top-Level Directories

```
ObsidianVault/
├── agency-agents/                  # Agency/agent workflow skills
├── Agent-Agency/                   # Agent agency framework
├── Agent-Reach/                    # Agent-reach specific skills
├── awesome-ai-visual-realism-prompts/  # AI visual prompt library
├── awesome-design-md-main/         # Design in markdown references
├── awesome-web-animation/          # Web animation references
├── awwwards-ui-skill/             # Awwwards UI design skills
├── caveman-main/                  # "Caveman" design system
├── cinematic-ui/                  # Cinematic UI framework
├── cineView/                      # Video/3D view skills
├── creativly.ai-brand-video-remotion/  # Brand video via Remotion
├── design-psychology-skill/       # Design psychology
├── design.md-main/               # Design markdown spec
├── gentlerain.ai/                 # Gentle Rain AI design
├── gpt-seedance-skills/           # GPT x Seedance (3D AI)
├── higgsfield-ai-prompt-skill/    # Higgsfield AI prompts
├── higgsfield-claude-skills/      # Higgsfield Claude integration
├── higgsfield-skills/             # Higgsfield general skills
├── higgsfield-skills-official/    # Higgsfield official skills
├── josh.js/                       # Josh.js animation library
├── jude-bundle/                   # Jude UI bundle
├── lanshu-awesome-ai-video-kit/   # AI video generation kit
├── manim-skill/                   # Manim animation skill
├── microck-alex-hormozi-pitch/    # Alex Hormozi pitch framework
├── seedance-full-skills/          # Seedance full skill set
├── seedance-optimizer/            # Seedance optimizer
├── seedance-prompt-skill/         # Seedance prompting
├── seedance2-skill/               # Seedance v2 skill
├── skill-main/                    # Main skill template
├── skills-library/                # *** CORE SKILLS *** (detailed below)
├── ui-ux-gold-standard/          # UI/UX gold standard
├── ui-ux-pro-max-skill-main/     # UI/UX Pro Max skill
├── web-designer-plugin/          # Web designer plugin
├── webdevpie-leniss-gsap/        # GSAP scroll animation
└── zine-scroll-storytelling-platform/  # Zine scroll stories
```

### 8.2 Skills Library — Complete Tree

This is the most important directory. It contains all reusable skills organized by domain:

```
skills-library/
├── design-systems/                  # Design system references
├── image-generation/
│   ├── character/                   # Character design prompts
│   ├── landscape/                   # Landscape generation
│   ├── product/                     # Product image prompts
│   └── prompt-templates/            # Reusable prompt templates
├── prompt-engineering/
│   ├── prompt-engineering-guide/    # Full guide to prompting
│   └── visual-realism-cookbook/     # Visual realism techniques
├── psychology-conversion/           # Psychology for conversion
├── references/
│   └── marketing-skills-os/         # 37 sales & marketing skills
│       # (cloned from coreyhaines31/marketingskills repo)
│       # Includes: cold-calling, cold-email, copywriting,
│       # linkedin-outreach, negotiation, pitch-deck,
│       # proposal-writing, social-selling, etc.
├── sales-marketing/
│   └── openoutreach/                # Full outreach platform
│       ├── compose/                 # Email/compose agents
│       ├── contacts/                # CRM contacts
│       ├── core/                    # Core outreach engine
│       ├── crm/                     # CRM integration
│       ├── emails/                  # Email templates & sending
│       ├── linkedin/                # LinkedIn automation
│       ├── chat/                    # Chat outreach
│       ├── agents/                  # AI agents for outreach
│       ├── db/                      # Database layer
│       └── management/              # Campaign management
├── tools/
│   ├── anything-llm/               # AnythingLLM setup
│   ├── best-aeo-skill/             # AEO (Answer Engine Optimization)
│   ├── claude-mem/                 # Claude memory system
│   ├── oh-my-openagent/            # OpenAgent framework
│   ├── ruflo/                      # *** FULL ruflo AGENTIC PLATFORM ***
│   │   ├── ruflo/                  # Core ruflo engine
│   │   │   ├── src/chat-ui/        # Chat interface
│   │   │   ├── src/config/         # Configuration
│   │   │   ├── src/mcp-bridge/     # MCP bridge
│   │   │   ├── src/nginx/          # Nginx reverse proxy
│   │   │   └── src/ruvocal/        # Ruvocal (voice) module
│   │   └── plugins/                # Ruflo plugin ecosystem
│   │       ├── ruflo-ddd/          # Domain-Driven Design
│   │       ├── ruflo-docs/         # Documentation generation
│   │       ├── ruflo-federation/   # Federation audit
│   │       ├── ruflo-goals/        # Goal planning + deep research
│   │       ├── ruflo-graph-intelligence/  # Graph intelligence
│   │       ├── ruflo-intelligence/ # Neural intelligence routing
│   │       ├── ruflo-iot-cognitum/ # IoT anomaly detection
│   │       ├── ruflo-jujutsu/      # Git workflow analysis
│   │       ├── ruflo-knowledge-graph/  # Knowledge graph
│   │       ├── ruflo-loop-workers/ # Cron & loop workers
│   │       ├── ruflo-market-data/  # Market data ingestion
│   │       ├── ruflo-metaharness/  # Benchmark & security harness
│   │       ├── ruflo-migrations/   # Database migrations
│   │       ├── ruflo-neural-trader/ # Neural trading signals
│   │       ├── ruflo-observability/ # Metrics & tracing
│   │       ├── ruflo-plugin-creator/ # Plugin scaffolding
│   │       ├── ruflo-rag-memory/   # RAG memory bridge
│   │       ├── ruflo-ruvector/     # Vector embedding
│   │       ├── ruflo-ruvllm/       # LLM configuration
│   │       ├── ruflo-rvf/          # Session persistence
│   │       ├── ruflo-security-audit/ # Security scanning
│   │       ├── ruflo-sparc/        # SPARC methodology
│   │       ├── ruflo-swarm/        # Swarm agent monitoring
│   │       ├── ruflo-testgen/      # Test generation (TDD)
│   │       └── ruflo-workflows/    # GAIA workflow automation
│   └── skillspector/               # Skill security scanner
│       ├── src/skillspector/       # Core scanner
│       │   ├── nodes/analyzers/    # Skill analyzers
│       │   └── providers/          # AI providers (anthropic, openai, bedrock, nvidia)
│       └── tests/fixtures/         # Test skill fixtures
├── ux-psychology/
│   └── design-psychology/          # Design psychology principles
│       ├── checklists/             # UX checklists
│       └── references/             # Reference materials
├── video-generation/
│   ├── 3d-cgi/                     # 3D CGI generation
│   ├── ai-video-kit/               # AI video toolkit
│   ├── brand-story/                # Brand storytelling via video
│   ├── brand-video-remotion/       # Brand video with Remotion
│   ├── cinematic/                  # Cinematic video
│   ├── manim-animation/            # Manim animations
│   ├── motion-design/              # Motion design
│   ├── remotion-transitions/       # Remotion transitions
│   │   └── references/
│   ├── seedance2-en/               # Seedance2 (English) 3D video
│   └── storyboard/                 # Video storyboarding
├── web-animation/
│   ├── gsap/                       # GSAP animation library skills
│   ├── scroll/                     # Scroll-based animation
│   └── threejs/                    # Three.js 3D web skills
└── web-design/
    ├── aurelis-reference/          # Aurelis design reference
    ├── awwwards-ui-skill/          # Awwwards UI
    ├── cinematic-ui/               # Cinematic UI (detailed)
    │   └── references/data/        # Reference data
    ├── gentlerain-clone/           # GentleRain clone
    ├── lenis-gsap-scroll/          # Lenis + GSAP scroll
    ├── scrolling-site/
    │   └── src/                    # Scroll site source
    ├── ui-ux-gold-standard/        # Gold standard UI/UX
    │   └── references/
    └── web-designer/               # Web designer skill
```

### 8.3 File Statistics

| Type | Count |
|------|-------|
| `.md` files | 4,620 |
| `.ts` files | 4,528 |
| `.mdx` files | 1,139 |
| `.json` files | 937 |
| `.js` files | 920 |
| `.py` files | 550 |
| `.png` files | 531 |
| `.txt` files | 452 |
| `.jsx` files | 448 |
| `.mdc` files | 257 |
| `.mjs` files | 245 |
| `.tsx` files | 199 |
| `.sh` files | 174 |
| `.yml` files | 157 |
| `.svg` files | 147 |
| `.csv` files | 103 |
| `.yaml` files | 88 |
| `.svelte` files | 75 |

---

## 9. Synaptix Studio Operational Files

These 16 files at `D:\synaptix_os\` are the core Synaptix Studio business system:

### 9.1 Sales, Marketing & Operations (9 Core Files)

| # | File | Content |
|---|------|---------|
| 01 | `01_MASTER_LAUNCH_GUIDE.md` (15KB) | Sandler + Challenger + Gap Selling + Chris Voss + Hooked Model frameworks; agent-reach tool table; positioning for AI agency |
| 02 | `02_COLD_CALLING_PITCH_SCRIPTS.md` (11KB) | Commercial teaching (Challenger), mirroring/labeling (Voss), Gap Selling objections, SPIN implication questions |
| 03 | `03_COLD_EMAIL_TEMPLATES.md` (9KB) | Jason Bay permission-based openers, PAS/BAB/AIDA structures, Steli Efti breakup emails, social proof hierarchy, Twitter trigger signals |
| 04 | `04_LEAD_GENERATION_SYSTEM.md` (8KB) | twitter-cli signal monitoring, agent-reach lead gen, gh CLI repo search, MEDDIC qualification |
| 05 | `05_MARKETING_STRATEGY.md` (10KB) | Cialdini 7 principles table, Hooked Model content loops, Interrupt Patterns (4 U's, PAS, BAB, Pattern Interrupt) |
| 06 | `06_CLIENT_ONBOARDING_KIT.md` (7KB) | 5-phase onboarding, Hooked Model applied to client retention, n8n workflow automation |
| 07 | `07_LEGAL_DOCS_AND_INVOICE_TEMPLATES.md` (7KB) | AI code clause referencing marketingskills repo, data privacy section, invoice templates |
| 08 | `08_PROPOSAL_TEMPLATE.md` (5KB) | Challenger insight page, Hormozi gap stacking, Cialdini anchoring for 3-tier pricing |
| 09 | `09_HONEST_ANALYSIS_AND_REVENUE.md` (7KB) | Installed assets listed, channel status, revenue projections |

### 9.2 Research & Strategy Files (7 Files)

| File | Size | Content |
|------|------|---------|
| `COMPETITOR_LANDSCAPE.md` | 4KB | 13 Three.js agencies, 6 AI builders, 9 key creators, white space gap |
| `VIRAL_CONTENT_PLAYBOOK.md` | 5KB | 6 viral formats ranked, 7 hook patterns, 8 ready-to-post thread ideas |
| `creator_research.md` | 23KB | 30+ creators across 6 niches, 6 content gaps |
| `SYNAPTIX_STUDIO_SOCIAL_PLAYBOOK.md` | 30KB | Full 7-platform strategy (LinkedIn 40%, X 20%, IG 10%, Medium 10%, Reddit 10%, YouTube 10%) |
| `cold_outreach_research.md` | 46KB | 904 lines — cold outreach research, scripts, methodologies |
| `sales-research-compendium.md` | 43KB | 552 lines — sales methodology research (Sandler, Challenger, Gap, SPIN, etc.) |
| `marketing_research_comprehensive.md` | 39KB | 731 lines — marketing psychology research (Cialdini, Hooked, etc.) |

### 9.3 Utility Files

| File | Purpose |
|------|---------|
| `relocate_to_vault.ps1` | PowerShell script to relocate all repo files into ObsidianVault/ |
| `config/mcporter.json` | MCPorter bridge configuration |

### 9.4 Key Frameworks Used Across Files

| Framework | Used In |
|-----------|---------|
| Sandler Sandler Sales Methodology | 01, 02 |
| Challenger Commercial Teaching | 01, 02, 08 |
| Gap Selling (Keenan) | 01, 02, 08 |
| Chris Voss Mirroring/Labeling | 01, 02 |
| SPIN Selling (Rackham) | 01, 02 |
| Hooked Model (Nir Eyal) | 01, 05, 06 |
| Cialdini 7 Principles | 05, 08 |
| PAS / BAB / AIDA Copywriting | 03, 05 |
| Steli Efti Breakup Emails | 03 |
| Jason Bay Permission-Based | 03 |
| Alex Hormozi Gap Stacking | 08, 09 |
| MEDDIC Qualification | 04 |
| Interrupt Patterns (Lochhead) | 05 |
| agent-reach Tool Table | 01, 04, 09 |
| CREW Method | 01 |

---

## 10. Agentic Tool Integration

### 10.1 How opencode Reads Skills

opencode loads skills from:
1. The workspace `.opencode/` directory (if present)
2. Installed npm packages in `%USERPROFILE%\.config\opencode\node_modules`
3. Any MCP servers configured in `opencode.jsonc`

**To add a skill to opencode:**
```powershell
# Symlink or copy skill directory
New-Item -ItemType Junction -Path "D:\synaptix_os\.opencode\skills" -Target "D:\synaptix_os\ObsidianVault\skills-library"
```

### 10.2 How Hermes Agent Reads Skills

Hermes reads skills from `%USERPROFILE%\AppData\Local\hermes\skills\`. Each subdirectory is a skill category with markdown/JSON files defining tools and behaviors.

**To add a new skill to Hermes:**
```powershell
# Copy skill to Hermes skills directory
Copy-Item -Recurse "D:\synaptix_os\ObsidianVault\skills-library\tools\anything-llm" "$env:USERPROFILE\AppData\Local\hermes\skills\tools\"
```

### 10.3 MCP (Model Context Protocol) Integration

MCP servers connect AI agents to external tools:

| MCP Server | Source | Purpose |
|-----------|--------|---------|
| `linkedin-scraper-mcp` | Pip (agent-reach venv) | LinkedIn data extraction |
| `mcp-server-linkedin` | Pip (agent-reach venv) | LinkedIn posts/interactions |
| `mcporter` | npm global | MCP bridge/porter |
| `fastmcp` | Pip (agent-reach venv) | Fast MCP framework |

### 10.4 Ruflo Platform

Ruflo is a full agentic platform included in the skills library:

```
skills-library/tools/ruflo/
├── ruflo/                    # Core engine (SvelteKit + Python)
│   ├── chat-ui/              # Chat interface (static)
│   ├── config/               # Configuration
│   ├── mcp-bridge/           # MCP protocol bridge
│   ├── nginx/                # Reverse proxy
│   └── ruvocal/              # Voice interface (SvelteKit + SQLite)
└── plugins/                  # 23 official plugins
    ├── ddd/                  # Domain-driven design validation
    ├── docs/                 # API documentation generation
    ├── federation/           # Federation audit
    ├── goals/                # Goal planning + deep research
    ├── graph-intelligence/   # Graph intelligence
    ├── intelligence/         # Neural transfer intelligence
    ├── iot-cognitum/        # IoT fleet management
    ├── jujutsu/              # Git diff/workflow anaysis
    ├── knowledge-graph/      # KG extract & traverse
    ├── loop-workers/         # Cron scheduling
    ├── market-data/          # Market ingestion & patterns
    ├── metaharness/          # Benchmark, evolution, security
    ├── migrations/           # Database migrations
    ├── neural-trader/        # Trading signals, portfolio, risk
    ├── observability/        # Metrics & trace observation
    ├── plugin-creator/       # Plugin scaffolding
    ├── rag-memory/           # RAG memory bridge & search
    ├── ruvector/             # Vector embedding & clustering
    ├── ruvllm/               # LLM chat configuration
    ├── rvf/                  # Session persistence
    ├── security-audit/       # Dependency & security scan
    ├── sparc/                # SPARC methodology implementation
    ├── swarm/                # Swarm agent monitoring
    ├── testgen/              # TDD test generation
    └── workflows/            # GAIA workflow automation
```

---

## 11. Verification Checklist

Run these checks to verify your setup is complete:

```powershell
# 1. Core Runtimes
node --version                    # v22.17.0
python --version                  # 3.11.15
git --version                     # 2.54+

# 2. Agentic Tools
opencode --version                # Should not error
& "D:\Antigravity\bin\antigravity.cmd" --version  # Antigravity CLI
hermes --version                  # Hermes agent

# 3. CLI Tools
& "D:\npm-global\opencli.cmd" --version            # OpenCLI
& "D:\agent-reach.cmd" doctor --json              # agent-reach
twitter search "test" --limit 1                   # twitter-cli
gh --version                                       # GitHub CLI

# 4. npm Globals
npm list -g --depth=0
# Should show: @jackwener/opencli, cline, mcporter, ngrok, undici

# 5. PATH
$env:Path -split ';' | Select-String "npm-global|agent-reach|hermes|Antigravity|nodejs"

# 6. Repository
git status                        # Clean working tree
git remote -v                     # origin -> github.com/Bakkarranna/synaptix-os.git
git log --oneline -3              # Recent commits visible

# 7. Obsidian Vault
Test-Path "D:\synaptix_os\ObsidianVault\skills-library"  # Should be True
(Get-ChildItem "D:\synaptix_os\ObsidianVault" -Directory).Count  # 34 directories
```

### Common Issues & Fixes

| Symptom | Cause | Fix |
|---------|-------|-----|
| `opencli` not found | PATH not refreshed | Restart terminal or use full path `D:\npm-global\opencli.cmd` |
| `agent-reach` channels fail | Chrome not logged in | Open Chrome profile, log into sites |
| `twitter` auth fails | Tokens expired | Refresh TWITTER_AUTH_TOKEN and TWITTER_CT0 |
| Git push times out | Vault too large | Use `git push --no-verify` or sparse checkout |
| Hermes no model access | Missing API key | Configure `NVIDIA_API_KEY` or switch provider |
| PowerShell script blocked | Execution policy | `Set-ExecutionPolicy -Scope CurrentUser RemoteSigned` |

---

## 12. Prompt Block — Feed This to Your Agent

Copy the block below and give it to opencode, hermes agent, cline, or any other agentic tool to automatically set up the full Synaptix OS environment:

---

```
You are setting up the Synaptix OS development environment on a Windows machine.

STEPS:

1. Install Prerequisites (if not present):
   - Node.js v22.17.0 from https://nodejs.org/ to D:\Dev\nodejs\
   - Python 3.11+ from https://www.python.org/
   - Git 2.54+ from https://git-scm.com/
   - GitHub CLI from https://cli.github.com/ (run gh auth login)
   - Chrome browser

2. Configure npm:
   - npm config set prefix "D:\npm-global"
   - npm config set cache "D:\npm-cache"

3. Install Global npm Packages:
   - npm install -g @jackwener/opencli
   - npm install -g cline
   - npm install -g mcporter
   - npm install -g ngrok
   - npm install -g pnpm
   - npm install -g vercel
   - npm install -g typescript

4. Set up agent-reach:
   - pip install agent-reach
   - Create wrapper at D:\agent-reach.cmd pointing to the venv

5. Set up Hermes Agent:
   - Already at %USERPROFILE%\AppData\Local\hermes\
   - Skills at %USERPROFILE%\AppData\Local\hermes\skills\
   - Ensure NVIDIA_API_KEY is in .env or config.yaml

6. Configure PATH (User environment variable):
   - Add: D:\npm-global;D:\npm-global\bin;D:\Dev\nodejs;
     %USERPROFILE%\.agent-reach-venv\Scripts;
     %USERPROFILE%\AppData\Local\hermes\hermes-agent\venv\Scripts;
     D:\Antigravity\bin

7. Clone the repository:
   - git clone https://github.com/Bakkarranna/synaptix-os.git D:\synaptix_os
   - cd D:\synaptix_os

8. If the full clone is too large, use sparse checkout:
   - git clone --filter=blob:none --sparse https://github.com/Bakkarranna/synaptix-os.git D:\synaptix_os
   - cd D:\synaptix_os
   - git sparse-checkout add 0*_*.md COMPETITOR_LANDSCAPE.md VIRAL_CONTENT_PLAYBOOK.md creator_research.md SYNAPTIX_STUDIO_SOCIAL_PLAYBOOK.md cold_outreach_research.md sales-research-compendium.md marketing_research_comprehensive.md
   - git sparse-checkout add ObsidianVault/skills-library/

9. Set up OpenCLI Chrome session:
   - opencli chrome --profile-directory "Profile 1"
   - opencli session --name mysession

10. Configure Twitter auth:
    - Set TWITTER_AUTH_TOKEN and TWITTER_CT0 as environment variables

11. Create .env file in D:\synaptix_os\ with:
    GROQ_API_KEY=<YOUR_GROQ_API_KEY>

12. Verify everything works:
    - node --version, python --version, git --version
    - npm list -g --depth=0
    - & "D:\agent-reach.cmd" doctor --json
    - & "D:\npm-global\opencli.cmd" --version
    - twitter search "test" --limit 1
    - git remote -v

After all steps complete, run the verification checklist and report any failures.
```

---

## Appendix A: GitHub Repository

- **URL:** https://github.com/Bakkarranna/synaptix-os.git
- **Default Branch:** `main`
- **Remote origin:** `https://github.com/Bakkarranna/synaptix-os.git`
- **GitHub Pages:** Not configured

## Appendix B: Installed Package Inventory

### npm Global (`D:\npm-global`)
```
@jackwener/opencli@1.8.5    — OpenCLI universal site adapter
cline@3.0.0                 — AI-assisted coding
mcporter@0.9.0              — MCP porter/bridge
ngrok@5.0.0-beta.2          — Localhost tunneling
undici@7.28.0               — HTTP/1.1 client (npm dep)
```

### npm Global (`%APPDATA%\npm`)
```
pnpm                        — Fast package manager
typescript (tsc)           — TypeScript compiler
vercel (vc)                — Vercel deployment
```

### Pip (agent-reach venv: `%USERPROFILE%\.agent-reach-venv\`)
```
agent-reach v1.5.0          — Multi-platform research tool
twitter-cli v0.8.5          — Twitter/X CLI
linkedin-scraper-mcp        — LinkedIn MCP server
mcp-server-linkedin         — Alternative LinkedIn MCP
fastmcp                     — Fast MCP framework
browser-cookie              — Cookie extraction
curl-cffi                   — HTTP client
bili-cli                    — Bilibili CLI
scrapling                   — Web scraping
```

### Hermes Agent Venv (`%USERPROFILE%\AppData\Local\hermes\hermes-agent\venv\`)
```
hermes-agent                — Main agent binary
hermes-acp                  — Agent communication protocol
edge-tts                    — Text-to-speech
fastapi                     — API server
```

### Installed Applications
| Tool | Path | Purpose |
|------|------|---------|
| Antigravity IDE | `D:\Antigravity\` | AI agent IDE (Electron app) |
| Node.js v22.17.0 | `D:\Dev\nodejs\` | JavaScript runtime |
| Python 3.11.15 | (system) | Python runtime |
| Git 2.54.0 | (system) | Version control |
| Chrome (latest) | (system) | Browser for sessions |

## Appendix C: Environment Variables Reference

| Variable | Value / Location | Used By |
|----------|-----------------|---------|
| `GROQ_API_KEY` | `<YOUR_GROQ_API_KEY>` | opencode, groq models |
| `TWITTER_AUTH_TOKEN` | (set in env) | twitter-cli |
| `TWITTER_CT0` | (set in env) | twitter-cli |
| `NVIDIA_API_KEY` | (set in Hermes config) | Hermes agent model provider |
| `GITHUB_TOKEN` | (set via gh auth) | GitHub CLI, agent-reach |
| `npm_config_prefix` | `D:\npm-global` | npm global installs |
| `npm_config_cache` | `D:\npm-cache` | npm cache |

## Appendix D: Useful Commands Reference

### Repository Management
```powershell
git pull origin main                             # Update from remote
git add <file> && git commit -m "msg"            # Commit
git push origin main                             # Push
git log --oneline --graph --all -10              # History
```

### Research Commands
```powershell
& "D:\agent-reach.cmd" search --query "threejs agency"        # Multi-platform search
twitter search "AI agents" --limit 20                          # Twitter search
gh search repos "threejs agency" --limit 10                   # GitHub search
& "D:\npm-global\opencli.cmd" web --query "trending AI tools" # OpenCLI web search
```

### Synaptix Studio Operations
```powershell
# Generate lead list from Twitter
twitter search "need website" --limit 50 | Out-File leads.txt

# Research competitor
& "D:\agent-reach.cmd" research "threejs development agency"

# Quick content research
twitter search "threejs tips" --limit 30
```

### Directory Navigation
```powershell
# Go to repo root
cd D:\synaptix_os

# Access skills library
cd D:\synaptix_os\ObsidianVault\skills-library

# Access Synaptix Studio files (sorted by priority)
Get-ChildItem D:\synaptix_os\0*.md | Sort-Object Name
```
