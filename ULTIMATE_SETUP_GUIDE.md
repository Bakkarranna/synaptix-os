# Synaptix OS — Ultimate Setup Guide

> **Version:** 2.0  
> **Purpose:** Reproduce the full Synaptix OS development environment on any machine.  
> **Give this file to any agentic tool** (opencode desktop, hermes desktop, antigravity IDE, cline, etc.) and it will install and configure everything automatically.  

---

## Table of Contents

1. [How to Use This Guide](#1-how-to-use-this-guide)
2. [Prerequisites](#2-prerequisites)
3. [Install the Agentic Desktop IDEs First](#3-install-the-agentic-desktop-ides-first)
4. [Core CLI Tools](#4-core-cli-tools)
5. [Research & Social Media Tools](#5-research--social-media-tools)
6. [Development Tools](#6-development-tools)
7. [API Keys & Authentication](#7-api-keys--authentication)
8. [Environment Configuration](#8-environment-configuration)
9. [Clone the Synaptix OS Repository](#9-clone-the-synaptix-os-repository)
10. [Obsidian Vault Blueprint & Source Repos](#10-obsidian-vault-blueprint--source-repos)
11. [Synaptix Studio Operational Files](#11-synaptix-studio-operational-files)
12. [Agentic Tool Integration & Skill Loading](#12-agentic-tool-integration--skill-loading)
13. [Extensibility — Adding New Skills, MCPs, Plugins & Tools](#13-extensibility--adding-new-skills-mcps-plugins--tools)
14. [Verification Checklist](#14-verification-checklist)
15. [Prompt Block — Copy & Paste Into Any Agent](#15-prompt-block--copy--paste-into-any-agent)

---

## 1. How to Use This Guide

**This guide works as both a human reference AND a machine-readable prompt.**  

Two approaches:

**A) Agent-driven setup (recommended):** Install an agentic desktop IDE (step 3), then give it the [Prompt Block in section 15](#15-prompt-block--copy--paste-into-any-agent). The agent will read, interpret, and execute everything — installing prerequisites, cloning repos, configuring tools, and verifying the setup.

**B) Manual setup:** Follow each section step by step.

**Important:** All file paths shown (like `SynaptixOS/`) are relative to your chosen workspace root. The agent will detect your system and place files appropriately — you don't need to match any specific drive letter or user folder. The only rule is: keep everything inside a single organized root directory (e.g. `SynaptixOS/` or whatever you name it).

---

## 2. Prerequisites

The agent will install these if missing:

| Tool | Version | Download |
|------|---------|----------|
| Node.js | v22.x LTS | https://nodejs.org/ |
| Python | 3.11+ | https://www.python.org/ |
| Git | 2.54+ | https://git-scm.com/ |
| GitHub CLI (gh) | latest | https://cli.github.com/ |
| Chrome Browser | latest | https://www.google.com/chrome/ |
| VS Code (optional) | latest | https://code.visualstudio.com/ |

**Verify:**
```powershell
node --version
python --version
git --version
gh --version
```

---

## 3. Install the Agentic Desktop IDEs First

Install these desktop applications. After installation, open any of them and paste the [Prompt Block from section 15](#15-prompt-block--copy--paste-into-any-agent) — the agent will handle the rest of the setup.

| IDE | Purpose | Install |
|-----|---------|---------|
| **opencode desktop** | Primary agentic IDE for coding & system tasks | https://opencode.ai/download |
| **Hermes Agent** | Autonomous AI agent with MCP support | https://github.com/NousResearch/hermes-agent (desktop installer) |
| **Antigravity IDE** | Electron-based AI agent IDE | https://antigravity.dev/download |
| **opendesign** | AI-augmented design tool | https://opendesign.ai/download |
| **opencowork** | AI collaboration workspace | https://opencowork.ai/download |

> **Note:** If the desktop apps aren't available for your OS, the CLI versions work identically. The guide covers both.

---

## 4. Core CLI Tools

### 4.1 opencode (CLI)

```powershell
npm install -g @opencode-ai/cli
```

**Config (`opencode.jsonc`):**
```jsonc
{ "$schema": "https://opencode.ai/config.json" }
```

### 4.2 Hermes Agent (CLI)

Installed via pip in a venv:
```powershell
pip install hermes-agent
```

**Config (`config.yaml`):**
```yaml
model:
  default: "moonshotai/kimi-k2.6"
  provider: "nvidia"
  base_url: "https://integrate.api.nvidia.com/v1"
```

**Skills directory:** `{workspace}/skills/hermes/`

### 4.3 OpenCLI

Universal CLI for 160+ website adapters (social media, search, shopping, etc.).

```powershell
npm install -g @jackwener/opencli
```

**Chrome session setup:**
```powershell
opencli chrome --profile-directory "Profile 1"
opencli session --name mysession
opencli web --query "test query"
```

### 4.4 Cline

AI-assisted code generation:
```powershell
npm install -g cline
```

---

## 5. Research & Social Media Tools

### 5.1 agent-reach v1.5.0+

Multi-platform research orchestration (web, social, news, code, etc.).

```powershell
pip install agent-reach
```

**Channels routed by agent-reach:**

| Channel | Backend | Status |
|---------|---------|--------|
| Web Search | OpenCLI | ✓ |
| Twitter/X | twitter-cli | Needs auth |
| Reddit | OpenCLI | Needs Chrome session |
| Facebook | OpenCLI | Needs Chrome session |
| Instagram | OpenCLI | Needs Chrome session |
| LinkedIn | linkedin-scraper-mcp | ✓ |
| GitHub | gh CLI | Needs auth |
| YouTube | yt-dlp | ✓ |
| Bilibili | bili-cli | ✓ |
| ProductHunt | OpenCLI | ✓ |
| Medium | OpenCLI | ✓ |
| V2EX | OpenCLI | ✓ |

> **Note:** XiaoHongshu (小红书) is region-blocked in Pakistan — remove or skip if deploying in that region.

```powershell
agent-reach doctor --json
```

### 5.2 twitter-cli

```powershell
# Installed automatically with agent-reach
twitter search "AI agents" --limit 20
twitter user "elonmusk" --tweets 10
```

### 5.3 LinkedIn MCP Servers

```powershell
pip install linkedin-scraper-mcp mcp-server-linkedin fastmcp
```

### 5.4 bili-cli (Bilibili)

```powershell
pip install bili-cli
```

### 5.5 yt-dlp

```powershell
pip install yt-dlp
# or: winget install yt-dlp
```

### 5.6 Scrapling

```powershell
pip install scrapling
```

---

## 6. Development Tools

```powershell
npm install -g mcporter          # MCP bridge/porter
npm install -g pnpm              # Fast package manager
npm install -g vercel            # Vercel deployment
npm install -g ngrok             # Localhost tunneling
npm install -g typescript        # TypeScript compiler
```

---

## 7. API Keys & Authentication

Create a `.env` file at your workspace root:

```env
GROQ_API_KEY=<get from https://console.groq.com>
TWITTER_AUTH_TOKEN=<your_token>
TWITTER_CT0=<your_ct0>
GITHUB_TOKEN=<your_github_token>
NVIDIA_API_KEY=<your_nvidia_key>
OPENROUTER_API_KEY=<your_openrouter_key>
```

**GitHub auth:**
```powershell
gh auth login
```

**Chrome profile for OpenCLI sessions:**
```powershell
# Find your Chrome profile directory
opencli chrome --profile-directory "Profile 1"
opencli session --name mysession
```

Log into Reddit, Instagram, and Facebook in this Chrome profile.

---

## 8. Environment Configuration

### 8.1 NPM

```powershell
npm config set prefix "{workspace}/npm-global"
npm config set cache "{workspace}/npm-cache"
```

### 8.2 PATH

Add these to your User PATH (the agent will handle this):

```
{workspace}/npm-global
{workspace}/npm-global/bin
{nodejs-install-dir}
{agent-reach-venv}/Scripts
{hermes-venv}/Scripts
{antigravity}/bin
```

### 8.3 Git

```powershell
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
git config --global core.autocrlf true
```

---

## 9. Clone the Synaptix OS Repository

```powershell
git clone https://github.com/Bakkarranna/synaptix-os.git {workspace}
```

**Note:** The `ObsidianVault/` content is NOT pushed to GitHub (too large). Instead, the vault is rebuilt from original source repos listed in [Section 10](#10-obsidian-vault-blueprint--source-repos). After cloning, the agent should clone those repos into the vault.

---

## 10. Obsidian Vault Blueprint & Source Repos

The vault at `{workspace}/ObsidianVault/` is organized into skill collections. Since the actual files aren't in GitHub, clone each from its original repo. The agent will do this automatically.

### 10.1 Top-Level Skills

| Folder | Original Repo |
|--------|---------------|
| `agency-agents/` | https://github.com/search?q=agency+agents+claude+skills |
| `Agent-Agency/` | https://github.com/search?q=agent+agency+skills |
| `Agent-Reach/` | https://github.com/anomalyco/agent-reach |
| `awesome-ai-visual-realism-prompts/` | https://github.com/search?q=awesome+ai+visual+realism+prompts |
| `awesome-design-md-main/` | https://github.com/search?q=awesome+design+md |
| `awesome-web-animation/` | https://github.com/search?q=awesome+web+animation |
| `awwwards-ui-skill/` | https://github.com/search?q=awwwards+ui+skill+claude |
| `caveman-main/` | https://github.com/search?q=caveman+design+system+claude |
| `cinematic-ui/` | https://github.com/search?q=cinematic+ui+claude+skill |
| `cineView/` | https://github.com/search?q=cineview+3d+video |
| `creativly.ai-brand-video-remotion/` | https://github.com/search?q=creativly+ai+brand+video+remotion |
| `design-psychology-skill/` | https://github.com/search?q=design+psychology+claude+skill |
| `design.md-main/` | https://github.com/search?q=design+md+main |
| `gentlerain.ai/` | https://github.com/search?q=gentlerain+ai+skills |
| `gpt-seedance-skills/` | https://github.com/life-hacker/gpt-seedance-skills |
| `higgsfield-ai-prompt-skill/` | https://github.com/higgsfield-ai/higgsfield-prompt-skill |
| `higgsfield-claude-skills/` | https://github.com/higgsfield-ai/higgsfield-claude-skills |
| `higgsfield-skills/` | https://github.com/higgsfield-ai/higgsfield-skills |
| `higgsfield-skills-official/` | https://github.com/higgsfield-ai/higgsfield-skills-official |
| `josh.js/` | https://github.com/search?q=josh+js+animation |
| `jude-bundle/` | https://github.com/search?q=jude+ui+bundle+claude |
| `lanshu-awesome-ai-video-kit/` | https://github.com/lanshu-ai/awesome-ai-video-kit |
| `manim-skill/` | https://github.com/search?q=manim+animation+claude+skill |
| `microck-alex-hormozi-pitch/` | https://github.com/microck/alex-hormozi-pitch |
| `seedance-full-skills/` | https://github.com/life-hacker/seedance-full-skills |
| `seedance-optimizer/` | https://github.com/life-hacker/seedance-optimizer |
| `seedance-prompt-skill/` | https://github.com/life-hacker/seedance-prompt-skill |
| `seedance2-skill/` | https://github.com/life-hacker/seedance2-skill |
| `skill-main/` | https://github.com/search?q=claude+skill+main+template |
| `ui-ux-gold-standard/` | https://github.com/search?q=ui+ux+gold+standard+claude |
| `ui-ux-pro-max-skill-main/` | https://github.com/search?q=ui+ux+pro+max+skill+claude |
| `web-designer-plugin/` | https://github.com/search?q=web+designer+claude+plugin |
| `webdevpie-leniss-gsap/` | https://github.com/search?q=webdevpie+lenis+gsap+scroll |
| `zine-scroll-storytelling-platform/` | https://github.com/search?q=zine+scroll+storytelling |

### 10.2 Skills Library — Sub-Skills & Repos

```
skills-library/
├── design-systems/                          # https://github.com/search?q=design+systems+claude+skill
├── image-generation/
│   ├── character/                           # https://github.com/search?q=character+design+ai+prompts
│   ├── landscape/                           # https://github.com/search?q=landscape+generation+prompts
│   ├── product/                             # https://github.com/search?q=product+image+prompts+ai
│   └── prompt-templates/                    # https://github.com/search?q=ai+prompt+templates
├── prompt-engineering/
│   ├── prompt-engineering-guide/            # https://github.com/search?q=prompt+engineering+guide
│   └── visual-realism-cookbook/             # https://github.com/search?q=visual+realism+cookbook+prompts
├── psychology-conversion/                   # https://github.com/search?q=psychology+conversion+claude
├── references/
│   └── marketing-skills-os/                 # https://github.com/coreyhaines31/marketingskills
│       # 37 skills: cold-calling, copywriting, negotiation, pitch-deck, etc.
├── sales-marketing/
│   └── openoutreach/                        # https://github.com/search?q=openoutreach+ai
│       ├── compose, contacts, core, crm, emails, linkedin,
│       ├── chat, agents, db, management
├── tools/
│   ├── anything-llm/                        # https://github.com/Mintplex-Labs/anything-llm
│   ├── best-aeo-skill/                      # https://github.com/search?q=aeo+answer+engine+optimization+skill
│   ├── claude-mem/                          # https://github.com/search?q=claude+memory+system+skill
│   ├── oh-my-openagent/                     # https://github.com/search?q=oh+my+openagent
│   ├── ruflo/                               # https://github.com/ruflo/ruflo
│   │   └── plugins/ 23 plugins (ddd, docs, federation, goals,
│   │       graph-intelligence, iot, jujutsu, knowledge-graph,
│   │       loop-workers, market-data, metaharness, migrations,
│   │       neural-trader, observability, plugin-creator,
│   │       rag-memory, ruvector, ruvllm, rvf, security-audit,
│   │       sparc, swarm, testgen, workflows)
│   └── skillspector/                        # https://github.com/search?q=skillspector+security
├── ux-psychology/
│   └── design-psychology/                   # https://github.com/search?q=design+psychology+ux+skill
│       ├── checklists/
│       └── references/
├── video-generation/
│   ├── 3d-cgi/                              # https://github.com/search?q=3d+cgi+video+generation+skill
│   ├── ai-video-kit/                        # https://github.com/lanshu-ai/awesome-ai-video-kit
│   ├── brand-story/                         # https://github.com/search?q=brand+storytelling+video+skill
│   ├── brand-video-remotion/                # https://github.com/search?q=brand+video+remotion+skill
│   ├── cinematic/                           # https://github.com/search?q=cinematic+video+generation+skill
│   ├── manim-animation/                     # https://github.com/search?q=manim+animation+skill
│   ├── motion-design/                       # https://github.com/search?q=motion+design+skill+claude
│   ├── remotion-transitions/                # https://github.com/search?q=remotion+transitions+skill
│   ├── seedance2-en/                        # https://github.com/life-hacker/seedance2-skill
│   └── storyboard/                          # https://github.com/search?q=video+storyboard+skill
├── web-animation/
│   ├── gsap/                                # https://github.com/search?q=gsap+animation+claude+skill
│   ├── scroll/                              # https://github.com/search?q=scroll+animation+skill
│   └── threejs/                             # https://github.com/search?q=threejs+claude+skill
└── web-design/
    ├── aurelis-reference/                   # https://github.com/search?q=aurelis+design+reference
    ├── awwwards-ui-skill/                   # https://github.com/search?q=awwwards+ui+claude+skill
    ├── cinematic-ui/                        # https://github.com/search?q=cinematic+ui+claude+skill
    ├── gentlerain-clone/                    # https://github.com/search?q=gentlerain+clone+skill
    ├── lenis-gsap-scroll/                   # https://github.com/search?q=lenis+gsap+scroll+skill
    ├── scrolling-site/                      # https://github.com/search?q=scrolling+site+skill
    ├── ui-ux-gold-standard/                 # https://github.com/search?q=ui+ux+gold+standard+skill
    └── web-designer/                        # https://github.com/search?q=web+designer+claude+skill
```

> **Note:** The agent will search GitHub for these repos and clone them. If a repo is private or moved, the agent should fall back to `git clone` from the most relevant public fork or search result.

---

## 11. Synaptix Studio Operational Files

These 16 files at the workspace root are the core Synaptix Studio business system. They ARE on GitHub — no extra setup needed.

### 11.1 Sales, Marketing & Operations (9 Core Files)

| File | Content |
|------|---------|
| `01_MASTER_LAUNCH_GUIDE.md` | Sandler + Challenger + Gap Selling + Chris Voss + Hooked Model |
| `02_COLD_CALLING_PITCH_SCRIPTS.md` | Commercial teaching, mirroring, Gap objections, SPIN |
| `03_COLD_EMAIL_TEMPLATES.md` | Jason Bay, PAS/BAB/AIDA, Steli Efti, social proof, Twitter signals |
| `04_LEAD_GENERATION_SYSTEM.md` | twitter-cli, agent-reach, gh CLI, MEDDIC |
| `05_MARKETING_STRATEGY.md` | Cialdini, Hooked Model, Interrupt Patterns |
| `06_CLIENT_ONBOARDING_KIT.md` | 5-phase, Hooked Model for retention, n8n |
| `07_LEGAL_DOCS_AND_INVOICE_TEMPLATES.md` | AI code clause, data privacy |
| `08_PROPOSAL_TEMPLATE.md` | Challenger insight, Hormozi gap, Cialdini 3-tier |
| `09_HONEST_ANALYSIS_AND_REVENUE.md` | Installed assets, channel status, revenue |

### 11.2 Research & Strategy Files (7 Files)

| File | Content |
|------|---------|
| `COMPETITOR_LANDSCAPE.md` | 13 agencies, 6 AI builders, 9 creators, white space |
| `VIRAL_CONTENT_PLAYBOOK.md` | 6 formats, 7 hooks, 8 thread ideas |
| `creator_research.md` | 30+ creators, 6 content gaps |
| `SYNAPTIX_STUDIO_SOCIAL_PLAYBOOK.md` | Full 7-platform strategy |
| `cold_outreach_research.md` | 904 lines cold outreach research |
| `sales-research-compendium.md` | 552 lines sales methodology research |
| `marketing_research_comprehensive.md` | 731 lines marketing psychology research |

### 11.3 Key Frameworks

Sandler, Challenger, Gap Selling, Chris Voss, SPIN Selling, Hooked Model, Cialdini 7 Principles, PAS/BAB/AIDA, Steli Efti Breakup, Alex Hormozi Gap Stacking, MEDDIC, Interrupt Patterns, CREW Method.

---

## 12. Agentic Tool Integration & Skill Loading

### 12.1 Load Skills into opencode

opencode loads skills from:
1. `{workspace}/.opencode/skills/` (symlink to vault)
2. Installed npm packages
3. MCP servers in `opencode.jsonc`

```powershell
# Symlink the skills library into opencode's workspace config
New-Item -ItemType Junction -Path "{workspace}/.opencode/skills" -Target "{workspace}/ObsidianVault/skills-library"
```

### 12.2 Load Skills into Hermes Agent

Hermes reads skills from `{hermes-data-dir}/skills/`. Each subdirectory becomes a tool category.

```powershell
# Copy skills to Hermes
Copy-Item -Recurse "{workspace}/ObsidianVault/skills-library/tools" "{hermes-data-dir}/skills/tools"
```

### 12.3 Load Skills into Antigravity

```powershell
# Point Antigravity to the vault's skills
# Configure in Antigravity settings or through its config file
```

### 12.4 MCP Servers

| Server | Install | Purpose |
|--------|---------|---------|
| `linkedin-scraper-mcp` | `pip install linkedin-scraper-mcp` | LinkedIn data |
| `mcp-server-linkedin` | `pip install mcp-server-linkedin` | LinkedIn posts |
| `mcporter` | `npm install -g mcporter` | MCP bridge |
| `fastmcp` | `pip install fastmcp` | Fast MCP framework |

---

## 13. Extensibility — Adding New Skills, MCPs, Plugins & Tools

The system is designed to grow. There is no limit — every time you add something, follow this pattern.

### 13.1 Directory Convention

Everything lives under `{workspace}/`. When adding something new:

```
{workspace}/
├── ObsidianVault/
│   ├── skills-library/           # ← NEW SKILLS GO HERE
│   │   └── {category}/
│   │       └── {skill-name}/
│   ├── {top-level-skill}/        # ← OR AS TOP-LEVEL FOLDER
│   └── ...
├── config/
│   └── mcporter.json             # ← NEW MCP CONFIGS GO HERE
└── ULTIMATE_SETUP_GUIDE.md       # ← UPDATE THIS FILE
```

### 13.2 Adding a New Skill

1. **Source:** Clone from GitHub or create from scratch
   ```powershell
   git clone https://github.com/{user}/{repo}.git {workspace}/ObsidianVault/skills-library/{category}/{skill-name}
   ```

2. **Register:** Add an entry to this guide's skill table (section 10)

3. **Link:** Create symlinks into your agentic IDEs
   ```powershell
   New-Item -ItemType Junction -Path "{workspace}/.opencode/skills/{category}" -Target "{workspace}/ObsidianVault/skills-library/{category}"
   ```

4. **Update README:** The agent should maintain a `{workspace}/README.md` that lists every installed skill, MCP, plugin, and tool with descriptions and source URLs. This readme serves as the single source of truth for both humans and AI agents.

### 13.3 Adding a New MCP Server

1. Install: `pip install {mcp-package}` or `npm install -g {mcp-package}`
2. Configure in `{workspace}/config/mcporter.json` or your agent's MCP config
3. Add to the MCP table in section 12.4
4. Update the readme

### 13.4 Adding a New Plugin or Tool

1. Install via npm/pip/winget
2. Add to the Inventory in this guide (section 4-6)
3. Update the readme

### 13.5 The Rule

**Every addition is documented in three places:**
1. The installed location (on disk)
2. This guide (source of truth for reproduction)
3. The workspace README (human + machine-readable inventory)

This makes the system **self-documenting** — any agent can read the readme and know exactly what's available, where it lives, and how to use it.

---

## 14. Verification Checklist

The agent should run these checks after setup:

```powershell
# Core runtimes
node --version          # v22.x
python --version        # 3.11+
git --version           # 2.54+

# Agentic tools
opencode --version
hermes --version
{antigravity}/bin/antigravity --version

# CLI tools
opencli --version
agent-reach doctor --json
twitter search "test" --limit 1
gh --version

# npm globals
npm list -g --depth=0

# Repository
git status
git remote -v
git log --oneline -3

# Vault structure
Test-Path "{workspace}/ObsidianVault/skills-library" -PathType Container
Get-ChildItem "{workspace}/ObsidianVault" -Directory | Measure-Object
```

### Common Issues & Fixes

| Symptom | Fix |
|---------|-----|
| `opencli` not found | Restart terminal or use full path to npm-global/bin/opencli |
| `agent-reach` channels fail | Open Chrome profile, log into sites |
| `twitter` auth fails | Refresh TWITTER_AUTH_TOKEN and TWITTER_CT0 |
| Hermes no model access | Set NVIDIA_API_KEY or switch provider in config.yaml |
| PowerShell blocked | `Set-ExecutionPolicy -Scope CurrentUser RemoteSigned` |

---

## 15. Prompt Block — Copy & Paste Into Any Agent

Copy the block below into opencode desktop, Hermes Agent, Antigravity IDE, opendesign, opencowork, or any other agentic tool. The agent will execute the entire setup automatically.

---

```
You are setting up the Synaptix OS environment. Follow these steps in order.

STEP 1 — Install Prerequisites
- Install Node.js v22.x LTS from https://nodejs.org/
- Install Python 3.11+ from https://www.python.org/
- Install Git 2.54+ from https://git-scm.com/
- Install GitHub CLI from https://cli.github.com/ (run gh auth login)
- Install Chrome browser

STEP 2 — Choose a Workspace Root
- Pick a root directory (e.g., C:\SynaptixOS, D:\synaptix_os, ~/synaptix-os)
- All files will live inside this directory
- I'll refer to it as {workspace} below

STEP 3 — Configure npm
- npm config set prefix "{workspace}/npm-global"
- npm config set cache "{workspace}/npm-cache"

STEP 4 — Install Global npm Packages
- npm install -g @jackwener/opencli
- npm install -g cline
- npm install -g mcporter
- npm install -g ngrok
- npm install -g pnpm
- npm install -g vercel
- npm install -g typescript

STEP 5 — Install Python Packages
- pip install agent-reach
- pip install linkedin-scraper-mcp mcp-server-linkedin fastmcp scrapling
- pip install bili-cli yt-dlp

STEP 6 — Clone the Repo
git clone https://github.com/Bakkarranna/synaptix-os.git {workspace}
cd {workspace}

STEP 7 — Rebuild the Obsidian Vault
The vault is NOT in GitHub (too large). Clone each skill from its original repo:
- For each skill in the "Synaptix OS Ultimate Setup Guide" section 10, git clone its GitHub URL into {workspace}/ObsidianVault/{folder}/
- If a repo can't be found, search GitHub using: "gh search repos {skill-name} --limit 5" and clone the best match
- Then clone the skills-library:
  - git clone https://github.com/coreyhaines31/marketingskills.git {workspace}/ObsidianVault/skills-library/references/marketing-skills-os
  - git clone https://github.com/ruflo/ruflo.git {workspace}/ObsidianVault/skills-library/tools/ruflo
  - git clone https://github.com/Mintplex-Labs/anything-llm.git {workspace}/ObsidianVault/skills-library/tools/anything-llm
  - Search and clone the rest (skillspector, claude-mem, oh-my-openagent, etc.)
- For top-level skills (cinematic-ui, higgsfield-*, seedance-*, etc.), search and clone each one

STEP 8 — Symlink Skills into Agentic Tools
- Create {workspace}/.opencode/ directory
- Symlink: {workspace}/.opencode/skills -> {workspace}/ObsidianVault/skills-library
- Copy skills to Hermes: Copy directory {workspace}/ObsidianVault/skills-library -> Hermes skills folder

STEP 9 — Set Up OpenCLI Chrome Session
- opencli chrome --profile-directory "Profile 1"
- opencli session --name mysession

STEP 10 — Configure Environment Variables
- Create {workspace}/.env with:
  GROQ_API_KEY=<get from https://console.groq.com>
  TWITTER_AUTH_TOKEN=<from twitter cookies>
  TWITTER_CT0=<from twitter cookies>
  GITHUB_TOKEN=<from gh auth token>
- Set PATH to include: {workspace}/npm-global, npm-global/bin, nodejs dir, agent-reach venv/Scripts, hermes venv/Scripts

STEP 11 — Verify Everything
- node --version && python --version && git --version
- npm list -g --depth=0
- opencli --version
- agent-reach doctor --json
- twitter search "test" --limit 1
- git remote -v && git log --oneline -3
- Confirm ObsidianVault/skills-library exists with content

STEP 12 — Document in README
After setup, create {workspace}/README.md listing every installed:
- Tool (with version and install command)
- Skill (with GitHub source URL and description)
- MCP server (with install command and purpose)
- Plugin (with source and category)
This readme is the single source of truth for both humans and agents.

Report any failures and the verification results.
```

---

## Appendix: Original Setup Reference

**Original creator's paths** (for reference — your paths will differ):
- Repo root: `D:\synaptix_os`
- npm prefix: `D:\npm-global`, npm cache: `D:\npm-cache`
- Node.js: `D:\Dev\nodejs\`
- Antigravity IDE: `D:\Antigravity\`
- agent-reach venv: `%USERPROFILE%\.agent-reach-venv\Scripts\`
- Hermes data: `%USERPROFILE%\AppData\Local\hermes\`
- opencode config: `%USERPROFILE%\.config\opencode\`

The agent should detect your OS and available drives, then place everything appropriately. The key principle is: **everything in one organized root**.
