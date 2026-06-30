# SYNAPTIX STUDIO — MASTER LAUNCH GUIDE

> **Status:** TEMPLATE DRAFT — all numbers are targets, not guarantees
> **For:** Synaptix Studio Team | **Version:** 2.1 | **Date:** June 2026
> **Funding:** Zero budget. Open-source stack. Sweat equity.

---

## CORE POSITIONING (Why You Exist)

**You are not a web agency. You are an Agentic Engineering Studio.**

Christopher Lochhead (category design): *"The category makes the brand, not the other way around."*

The category: **Agentic Engineering** — Karpathy's 2026 correction to "vibe coding." Production-grade digital products built by orchestrating AI agents with human oversight. Every other agency is still selling "web design" or "vibe coding." You sell the one thing enterprises will pay for: engineering rigor + cinematic quality.

**The 30-second pitch:**
> "We're an agentic engineering studio. Most agencies vibe-code your site, then you're stuck with broken security and architectural debt. We engineer it properly — Three.js experiences that score 95+ Lighthouse, AI agents that run your workflows, and production-grade code you can actually scale. We deliver in weeks, not months. Starting at $5K."

---

## FREE & OPEN-SOURCE TOOL STACK ($0/mo)

| Category | Tool | Cost | Replaces |
|----------|------|------|----------|
| CRM | **Twenty CRM** (self-hosted Docker) | $0 | HubSpot ($50+/mo) |
| Scheduling | **Cal.diy** (self-hosted) | $0 | Calendly ($12/mo) |
| Email Marketing | **Mautic** (self-hosted) | $0 | Instantly.ai ($37/mo) |
| Automation | **n8n** (self-hosted) | $0 | Zapier ($30/mo) |
| Web Scraping | **Scrapling** (Python lib) | $0 | Apollo.io ($59/mo) |
| Lead Enrichment | **Scrapling + Python scripts** | $0 | Clay ($149/mo) |
| Design | **Penpot** (self-hosted) | $0 | Figma ($15/mo) |
| Analytics | **Matomo** (self-hosted) | $0 | Google Analytics (free tier has limits) |
| CMS | **Directus** or **Strapi** (self-hosted) | $0 | Webflow ($29/mo) |
| Error Tracking | **Sentry** (self-hosted) | $0 | Sentry paid tier |
| Infrastructure | Docker + PostgreSQL + VPS | ~$10/mo | Cloud services |
| Email Sending | **Amazon SES** (pay-as-you-go) | ~$1/10K emails | Mailgun ($35/mo) |

**Total Monthly Burn (lean): ~$11/mo** (VPS + SES)

### Quick Install for Lead Gen (Scrapling)
```bash
pip install scrapling
# Then use StealthyFetcher for LinkedIn/company scraping
```

### Quick Install for CRM (Twenty)
```bash
git clone https://github.com/twentyhq/twenty.git
cd twenty
docker compose up -d
# CRM running on localhost:3000
```

### Quick Install for Email Sequences (Mautic)
```bash
git clone https://github.com/mautic/mautic.git
cd mautic
docker compose up -d
# Marketing automation running on localhost:8080
```

---

## SALES METHODOLOGY (Sandler + Challenger + Gap Selling + Chris Voss)

Forget everything in the old scripts. Use this instead.

### Every prospect interaction follows Sandler's 7 steps:
1. **Bonding & Rapport** — 2 min. Find common ground. Use Chris Voss mirroring: repeat the last 1-3 words they said with an upward inflection. Builds instant rapport.
2. **Up-Front Contract** — 30 sec. "I have 15 minutes. If we both agree there's a fit, we'll book a deeper call. If not, no hard feelings. Fair?"
3. **Pain Discovery** — Use the Sandler Pain Funnel + SPIN Selling (below)
4. **Budget** — Qualify before presenting. "What have you invested in this problem before?"
5. **Decision** — "Who else needs to be involved? How does your company make decisions like this?"
6. **Fulfillment** — Present ONLY after steps 1-5 are complete. Use Challenger "teach" (see below).
7. **Post-Sell** — Prevent buyer's remorse. Send a "what to expect" doc within 2 hours. Voss: "How does this feel to you?"

### Qualification: MEDDIC (for deals >$5K)
Before you write a proposal:
- **M**etrics — What numbers matter? (leads, revenue, conversion rate)
- **E**conomic Buyer — Who signs the check?
- **D**ecision Criteria — How do they evaluate solutions?
- **D**ecision Process — What steps, who's involved, timeline?
- **I**dentify Pain — What's beneath the surface?
- **C**hampion — Who inside wants you to win?

### The Sandler Pain Funnel + SPIN Implication Questions

| Sandler Question | SPIN Type | Purpose |
|---|---|---|
| "What's happening with your site right now that's bothering you?" | **S**ituation | Surface problem |
| "How long has that been going on?" | **P**roblem | Frustration level |
| "What have you tried so far?" | **P**roblem | Prior failures |
| "What's that costing you in terms of leads/revenue?" | **I**mplication | Financial impact — top performers ask 4x more Implication questions |
| "If you don't fix this in 90 days, what happens?" | **I**mplication | Emotional weight + urgency |
| "If you could eliminate that cost, what would that mean for your team?" | **N**eed-Payoff | Buyer articulates the value — this closes the gap |

**Gap Selling (Keenan):** People buy to close the gap between current state and desired future state. The bigger the gap, the more they pay. If they can't articulate a clear gap, they won't buy. Your job: amplify the cost of staying where they are, then build the value of the future state.

### The Challenger Sale: Teach, Tailor, Take Control

Great for discovery calls with qualified prospects (not cold calls):

1. **Teach** — Teach them something new about their own business. "Most founders who built with AI tools find their codebase has 3 specific security issues that don't show up until they hit 1,000 users. Here's what they look like."
2. **Tailor** — Speak differently to each stakeholder. Economic buyer: ROI. Technical buyer: implementation details. Champion: credibility they need internally.
3. **Take Control** — Create constructive tension. "Your current agency built this in 2 weeks. That explains why the Lighthouse score is 45 and the contact form doesn't actually send to your CRM. Do you want fast or do you want production-ready?"

### Chris Voss Negotiation Tools (for deal closing)

| Tool | How to Use | Example |
|------|-----------|---------|
| **Mirroring** | Repeat last 1-3 words, upward inflection | "We're worried about the timeline." → "The timeline?" (they'll elaborate) |
| **Labeling** | Name their emotion: "It sounds like..." | "It sounds like you've been burned by agencies before. That make sense?" |
| **Calibrated Questions** | How/What questions (not Why) | "How would this look if it went perfectly?" / "What would need to be true?" |
| **Ackerman Model** | 1) Set target. 2) Offer 65%. 3) 3 increments. 4) Precise final number. | "Based on scope, $15K feels right." → "I understand. I can do $10K." → "I really want to work with you. Best I can do is $12,847." |
| **Late-night RFQ** | End at 6pm. No proposal after 9pm. | Sends signal of sufficient demand |

### The Hooked Model for Client Engagement

Apply Nir Eyal's Hooked Model to turn one project into an ongoing retainer:

1. **Trigger** — Initial outreach / inbound contact
2. **Action** — Free audit / strategy call (lowest friction ask)
3. **Variable Reward** — Deliver specific, unexpected insight they didn't ask for
4. **Investment** — They share their stack, goals, pain points → loads the next trigger

Design the engagement so the investment phase naturally creates the next trigger (monthly performance review, traffic milestone, competitor launch).

---

## LEAD GENERATION ($0, Using Scrapling)

### Method 1: Scrapling for Lead Lists
```python
from scrapling import StealthyFetcher

async def find_leads():
    fetcher = StealthyFetcher()
    page = await fetcher.get("https://www.google.com/maps/search/web+design+agency+dubai")
    # Extract business names, websites, ratings
    # Filter: <4.0 stars, no website, or outdated design signals
```

### Method 2: Hunter.io Free Tier + Scrapling Verify
- Hunter.io gives 25 free email verifications/month
- Use Scrapling to find emails from LinkedIn/websites
- Verify with Hunter

### Method 3: LinkedIn + Scrapling Combo
- Use LinkedIn Sales Navigator (free with personal account)
- Export connections via Scrapling
- Enrich with company info via Crunchbase free tier

**Daily target:** 20 high-quality leads (not 50 surface-level ones)
**Quality check:** Every lead must pass: 1) Can they pay? 2) Do they have a real problem? 3) Are you talking to the decision-maker?

---

## COLD CALL SCRIPTS (Sandler Structure)

### Opener (30 seconds — Sandler Up-Front Contract):
> "Hi [Name], this is [Your Name] from Synaptix Studio. I have 3 minutes. I work with [their industry] companies on their web presence. If at the end of 3 minutes we both agree there might be a fit, we'll book 15 minutes to go deeper. If not, no hard feelings. Fair?"

### Pain Discovery (after they agree):
> "Quick question — when someone finds [Company Name] online, what do you want them to do? And is that actually happening right now?"

### Budget Question (step 4 — ask before pitching):
> "If we found a way to fix this, what kind of investment have you made on similar projects before?"

### Close:
> "Here's what I recommend: let's get on a 15-minute call this week. I'll show you exactly what we'd do differently. I have Tuesday at 2pm or Thursday at 10am — which works?"

---

## COLD EMAIL STRUCTURE (Signal-Based, Not Template-Based)

### The Berman Framework:
1. **First line:** A trigger-specific observation (funding, new hire, product launch, LinkedIn post)
2. **Second line:** The pain that trigger implies
3. **Third line:** Your connection to solving it (must be 1:1 with their pain)
4. **CTA:** One small ask

### Example (not a template — you must customize):
> "Saw [Company] just hired a VP of Growth. Most companies at that stage find their current site can't convert the traffic their new VP will drive."
>
> We help post-funding companies rebuild for conversion. Worth 15 minutes to see if there's fit?

### Use Mautic for sequences (self-hosted, free):
```bash
# Mautic campaign structure:
# Email 1: Day 0 — Trigger-based opener
# Email 2: Day 3 — Relevant case study
# Email 3: Day 7 — Value-add resource
# Email 4: Day 12 — Direct ask
# Email 5: Day 20 — Breakup
```

### Warmup:
- Start sending 5-10/day from your sending domain
- Gradually increase over 14 days
- Use Amazon SES (cheap) or self-hosted SMTP
- Target: bounce rate <2%

---

## MARKETING (LinkedIn, $0)

### Justin Welsh's System (adapted for Synaptix):
1. **One expensive problem:** "How to productionize AI-built apps" — every post orbits this
2. **Post format:** Hook → Story → Insight → CTA
3. **Frequency:** 1 post/day on LinkedIn from PERSONAL profiles (not company page)
4. **Carousels** every week (highest engagement format in 2026)
5. **Newsletter** on Substack or self-hosted (convert readers to subscribers)
6. **Comment strategy:** 15 thoughtful comments/day on target prospects' posts

### Category Design Content (Lochhead):
- "Stop vibe-coding your startup. Here's why production matters."
- "We audited 10 AI-built apps. Here's what we found (thread)."
- "Karpathy said vibe coding is dead. Here's what replaces it."
- "The 3 questions every founder should ask before paying a web agency."

---

## PRICING (No Fake Numbers — Real Agency Benchmarks)

Based on Promethean Research 2026 + Swydo 2026 data:

| Service | Price Range | Model |
|---------|------------|-------|
| Landing Page | $3K-$5K | Fixed fee |
| Full Website (5-10 pages) | $8K-$15K | Fixed fee |
| Cinematic Experience (3D) | $15K-$30K | Fixed fee |
| Vibe Code Audit | $500-$2.5K | Fixed fee |
| AI Automation System | $5K-$15K | Fixed fee |
| Monthly Retainer | $1K-$5K/mo | Retainer |

**Never compete on price. Compete on quality and positioning.**

**Vibe Code Audit pricing rationale:** Competitors charge $199-$2,500. Yours at $500-$2,500 is mid-range. $299 was too low — it signals low quality. Raise it.

---

## VALIDATION PATHWAY (Replace Fake Metrics)

Instead of claiming "72h delivery" and "98 Lighthouse," do this:

1. **Build 3 case studies on founder-pricing projects** (offer 40% off for testimonial + case study rights)
2. **Document every result with real screenshots and data**
3. **Launch the Three.js site AFTER you have 1-2 case studies**
4. **Submit to Awwwards only after 3+ projects are live** (not before you have any)

**Timeline (honest):**
- First client: 60-90 days (not 30)
- Break-even: Month 4-6 (not Month 2-3)
- $50K/mo: Month 9-12 (if everything goes right)
- $150K/mo: Year 2-3 (agency building takes time)

---

## BIGGEST RISKS (Honest)

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|-----------|
| Zero clients in Month 1-2 | 60% | High | Do free/pre-founder projects for case studies |
| Cash flow gaps between projects | 80% | High | Push retainers from project 1; 50% upfront always |
| No Three.js expertise on team | 50% | High | Use cinematic-ui skill from vault; train on Bruno Simon's free course |
| Team loses momentum without quick wins | 60% | High | Ship something small in week 1; celebrate small closes |
| Vibe Code Audit copied by competitors | 40% | Low | First-mover advantage; build case studies now |
| AI slop in outreach (generic emails) | 90% | Medium | Enforce signal-based personalization (Berman framework) |

---

## INSTALLED VAULT SKILLS & TOOLS

### Web Design Skills (Already Installed)
| Skill | Location | What It Provides |
|-------|----------|-----------------|
| cinematic-ui | `skills-library/web-design/cinematic-ui/` | Director-driven Three.js workflow |
| ui-ux-gold-standard | `skills-library/web-design/ui-ux-gold-standard/` | 28 award-winning UI techniques |
| web-designer | `skills-library/web-design/web-designer/` | 48 anti-patterns from top websites |
| design-psychology | `skills-library/ux-psychology/design-psychology/` | 60+ cognitive bias frameworks |

### Sales & Marketing Skills (Corey Haines / 37 skills)
Installed at `skills-library/sales-marketing/marketingskills/skills/`:
| Category | Skills |
|----------|--------|
| Copywriting | `copywriting`, `copy-editing`, `cold-email`, `emails`, `social`, `video` |
| CRO | `cro`, `ab-testing`, `signup`, `onboarding`, `popups`, `paywalls` |
| Strategy | `product-marketing`, `marketing-plan`, `marketing-psychology`, `offers`, `pricing`, `launch` |
| Sales | `prospecting`, `sales-enablement`, `revops`, `competitors`, `competitor-profiling` |
| Lead Gen | `lead-magnets`, `referrals`, `directory-submissions`, `co-marketing`, `community-marketing` |
| Growth | `seo-audit`, `ai-seo`, `content-strategy`, `analytics`, `churn-prevention`, `free-tools` |
| Ads | `ads`, `ad-creative`, `schema`, `site-architecture`, `programmatic-seo`, `aso` |

### Agent-Reach (13-Platform Internet Research)
Installed at `D:\agent-reach.cmd`:
| Channel | Status | Command |
|---------|--------|---------|
| Twitter/X | Authenticated | `twitter search "query" -n 10` |
| Web | Ready | `curl -s "https://r.jina.ai/URL"` |
| GitHub | Ready | `gh search repos "query"` |
| YouTube | Ready | `yt-dlp --dump-json URL` |
| Bilibili | Ready | `bili search "query"` |
| Reddit/FB/IG | Needs OpenCLI bind | `opencli browser <session> bind` |
| LinkedIn | Ready (basic) | Jina Reader; `mcporter` for deep |

---

**Version 3.0 | June 2026 | Frameworks: Sandler + Challenger + Gap Selling + Voss + Cialdini + Hooked**
**Next review:** After first client closes
