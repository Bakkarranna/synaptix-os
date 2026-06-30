# SYNAPTIX STUDIO — LEAD GENERATION SYSTEM ($0 Stack)

> **Goal:** 200 qualified leads in Month 1, not 500 surface-level contacts
> **Qualification framework:** MEDDIC (every lead must pass minimum criteria)

---

## THE QUALIFICATION GATE

Before adding ANY lead to your pipeline, they must pass this filter:

```
BUDGET:     Can they afford $3K+ for a project?
AUTHORITY:  Are you talking to the decision-maker (or can you get to them)?
NEED:       Do they have a real, articulated problem (not a vague want)?
TIMELINE:   Are they looking to move in the next 60-90 days?
PAIN:       Can they quantify what the problem costs them?
```

If 3+ answers are "no" — don't add them to your list. Move on.

---

## FREE TOOL STACK ($0/mo)

| Function | Tool | How to Install/Use |
|----------|------|-------------------|
| Lead Scraping | **Scrapling** | `pip install scrapling` — Python lib |
| Twitter Signal Monitoring | **twitter-cli** (authenticated) | `twitter search "built with AI" -n 20` |
| Web Research | **agent-reach** (13 platforms) | `D:\agent-reach.cmd doctor --json` |
| CRM | **Twenty CRM** | `docker compose up -d` on VPS |
| Email Finder | **Hunter.io** (free tier) | 25 free searches/month |
| Scheduling | **Cal.diy** | `docker compose up -d` |
| Enrichment | **Scrapling + Python** | Custom scripts + Crunchbase free |
| Tracking | **Google Sheets** | Free forever |
| GitHub Repo Search | **gh CLI** | `gh search repos "vibe code OR agentic engineering"` |

---

## METHOD 1: SCRAPLING-BASED LEAD GEN (Scale)

Scrapling does what Apollo.io and Clay do — for free.

### Company List Building
```python
from scrapling import StealthyFetcher, Fetcher

async def find_leads():
    stealth = StealthyFetcher()
    fast = Fetcher()

    # Option A: Google Maps (local businesses)
    page = await stealth.get("https://www.google.com/maps/search/dental+clinic+Dubai")
    # Extract: name, rating, website, phone, address
    # Filter: rating < 4.0 AND (no website OR bad mobile site)

    # Option B: Crunchbase (funded startups)
    page = await fast.get("https://www.crunchbase.com/discover/...")
    # Extract: company, funding, founders, tech stack

    # Option C: ProductHunt (vibe-coded apps)
    page = await fast.get("https://www.producthunt.com/launches?days=30")
    # Filter: "built with Cursor/Lovable/Bolt" or "solo founder"
```

### Twitter + LinkedIn Signal Monitoring

```bash
# Twitter: find founders who built with AI tools (authenticated, real-time)
twitter search "built with Cursor OR built with Lovable OR vibe coded" -n 30
twitter search "launched on ProductHunt AND solo founder" -n 20
twitter search "looking for a web developer OR need a new website" -n 20
```

```python
# Monitor for trigger signals across platforms
triggers = [
    "we just raised",
    "hiring a VP of",
    "building with Cursor",
    "vibe coded",
    "help with our website"
]

# Use Scrapling to monitor target LinkedIn accounts
# Use twitter-cli for Twitter monitoring (see above)
# Use agent-reach for cross-platform research
# When trigger appears -> add to Twenty CRM
```

### Hunter.io Integration
```python
# After extracting company domains, verify emails
hunter_api = "YOUR_API_KEY"  # 25 free searches/month

# Step 1: Find email pattern
# Step 2: Verify with Hunter
# Step 3: Add verified leads to Twenty CRM
```

---

## METHOD 2: TWENTY CRM PIPELINE

Self-hosted CRM replaces HubSpot's free tier. Set up with:

```bash
git clone https://github.com/twentyhq/twenty.git
cd twenty
docker compose up -d
# CRM at localhost:3000
```

### Pipeline Stages in Twenty:
1. **Lead** — Scraped but not qualified
2. **Contacted** — Email sent (track in Mautic)
3. **Discovery Call Booked** — Cal.diy link sent
4. **Discovery Done** — MEDDIC score recorded
5. **Proposal Sent** — Attach proposal PDF
6. **Negotiation** — Objections tracked
7. **Closed Won** — Onboarding triggered
8. **Closed Lost** — Reason recorded

### MEDDIC Score in CRM:
Create custom fields:
- Metrics clarity (1-5)
- Economic Buyer identified? (Y/N)
- Decision Criteria known? (1-5)
- Decision Process mapped? (Y/N)
- Pain quantified? ($ amount)
- Champion identified? (Y/N)
- Competition known? (text)

**Score threshold:** 4/7 minimum to send a proposal.

---

## METHOD 3: SCRAPLING ENRICHMENT PIPELINE

Replace Clay ($149/mo) with Scrapling:

```python
from scrapling import Fetcher

async def enrich_lead(company_domain):
    fetcher = Fetcher()

    # 1. Tech stack detection
    builtwith = await fetcher.get(f"https://builtwith.com/{company_domain}")
    tech = extract_tech_stack(builtwith)
    # Signal: old tech = needs upgrade

    # 2. Recent funding
    crunchbase = await fetcher.get(f"https://www.crunchbase.com/organization/{company_domain}")
    funding = extract_funding(crunchbase)

    # 3. Active job postings
    linkedin = await fetcher.get(f"https://www.linkedin.com/company/{company_domain}/jobs/")
    jobs = extract_job_titles(linkedin)

    # 4. Recent news
    news = await fetcher.get(f"https://news.google.com/search?q={company_domain}")
    mentions = extract_recent_mentions(news)

    return {
        "tech_stack": tech,
        "funding": funding,
        "hiring_for": jobs,
        "recent_news": mentions,
        "signal_strength": calculate_signal(funding, jobs, tech)
    }
```

---

## METHOD 4: LINKEDIN ORGANIC (Free, Justin Welsh System)

### Post 1x/day from Personal Profiles (NOT company page)
- Company page reach is 2% of followers
- Personal profile reach is 31%

### Daily Comment Strategy
- Find 15 target prospects via LinkedIn search
- Comment on their posts before connecting
- Must be substantive (3+ sentences, not "Great post!")
- Do this every day

### Content Calendar (Solve ONE Problem Repeatedly)
Your one problem: **How to productionize AI-built apps without breaking security and quality.**

| Week | Angle |
|------|-------|
| 1 | "We audited X AI apps. Y had security issues." |
| 2 | "Karpathy said vibe coding is dead. Here's what replaces it." |
| 3 | "The real cost of a vibe-coded MVP." |
| 4 | "How we turned a broken MVP into a production app." |

---

## METHOD 5: PRODUCTHUNT HUNTING (Vibe Code Audit Leads)

```python
from scrapling import Fetcher

async def find_vibe_code_leads():
    fetcher = Fetcher()
    page = await fetcher.get("https://www.producthunt.com/launches")

    # Find: launches in last 30 days
    # Signal: solo founder, built with AI tools
    # DM: "Noticed [Product] — congrats! Quick question..."
```

---

## METHOD 6: REFERRAL SYSTEM

**Cost:** $0
**Setup:** Offer 10% of project fee as credit for referrals

**Script for warm network:**
> "Hey [Name], hope you're well. I'm building Synaptix Studio — we build production-grade websites and AI systems. We're taking our first 3 clients at a founder's rate. Know anyone who might need this?"

---

## WEEKLY SCHEDULE (Realistic)

| Day | Activity | Volume |
|-----|----------|--------|
| Monday | Scrapling lead list + enrich | 20 leads |
| Tuesday | Cold calls (Sandler method) | 20 calls |
| Wednesday | LinkedIn content + comments | 1 post + 15 comments |
| Thursday | Cold emails (Mautic sequence) | 20-30 emails |
| Friday | Follow-ups + CRM cleanup | Varies |

**Weekly targets:**
- New qualified leads: 20 (not 100)
- Discovery calls booked: 2-3
- Proposals sent: 1-2

---

## LEAD SCORING MATRIX

Score each lead 1-10 based on:

| Signal | Points |
|--------|--------|
| Active hiring for growth role | +3 |
| Recent funding round | +3 |
| Website looks >3 years old | +2 |
| Low Google Maps rating (<4.0) | +2 |
| Built with outdated tech | +1 |
| Competitor just redesigned | +1 |
| LinkedIn post about growth problems | +2 |

**Score >7:** Priority — reach out within 24 hours
**Score 4-7:** Standard — nurture sequence
**Score <4:** Not ready — wait for signal change

---

**Version 3.0 | Stack: Scrapling + twitter-cli + agent-reach + Twenty CRM + Cal.diy + Mautic**
**Framework: MEDDIC Qualification + Signal-Based Scoring**
