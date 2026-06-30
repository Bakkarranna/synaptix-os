# SYNAPTIX STUDIO — COLD EMAIL SYSTEM

> **Framework:** Signal-Based Personalization (Alex Berman)
> **Tool:** Mautic (self-hosted, free) or Gmail manual
> **Send times:** Tuesday-Thursday, 7-9am or 2-4pm prospect's timezone

---

## INFRASTRUCTURE SETUP ($0)

### Step 1: Sending Domain
- Use a subdomain: `mail.synaptixstudio.com` or similar
- Set up SPF, DKIM, DMARC records (required in 2026 — unauthenticated mail is rejected)

### Step 2: Warmup
- Start at 5 emails/day, increase by 2/day
- Target: 30-40/day after 14 days
- Check score at `mail-tester.com` — target 9.5/10

### Step 3: List Building + Verification
```python
# Scrapling to build lead lists
from scrapling import StealthyFetcher

fetcher = StealthyFetcher()
# Extract leads from LinkedIn, Crunchbase, ProductHunt
# Verify with Hunter.io free tier (25 checks/mo)
```

### Step 4: Mautic Setup
```bash
# Self-hosted email automation
docker run -d --name mautic \
  -p 8080:80 \
  mautic/mautic:latest
# Connect Amazon SES for sending
# Build 5-email sequences with:
#   Email 1: Trigger-based opener
#   Email 2: Case study (Day 3)
#   Email 3: Value resource (Day 7)
#   Email 4: Direct ask (Day 12)
#   Email 5: Breakup (Day 20)
```

---

## THE BERMAN FRAMEWORK (5 Lines Max)

Every cold email follows this exact structure:

```
Line 1: Trigger-based observation (specific to THEIR situation)
Line 2: The pain that trigger implies
Line 3: Your connection to solving that pain
Line 4: Social proof (one relevant result)
Line 5: One small CTA
```

**The key insight:** Personalization must be signal-based, not firmographic. "I saw you're a SaaS company" is mail merge. "I saw you just posted 3 VP of Engineering roles" is a signal.

## JASON BAY: Permission-Based Openers

Bay's research shows the best openers don't sell — they ask for permission to sell:

```
Subject: Quick question

Hi [Name],

I've been following [Company]'s growth — impressive.

Quick question: is your current site driving the leads you need,
or is it mostly a credibility page right now?

- [Your Name]
```

**Bay's 3 rules:**
1. **Open with a question, not a statement** — Questions get replies. Statements get ignored.
2. **Make it about them, not you** — Never start with "I'm" or "We."
3. **Be specific enough to show you did research, vague enough to stay curious** — "Your Series A" (vague) vs. "You raised $5M Series A" (creepy).

## THREE COPYWRITING FRAMEWORKS FOR COLD EMAIL

Choose based on the situation:

| Framework | Best When | Example |
|-----------|-----------|---------|
| **PAS** (Problem-Agitate-Solution) | Prospect knows they have a problem | "Your site loads in 7s on mobile. Visitors leave. We fix it in 2 weeks." |
| **BAB** (Before-After-Bridge) | Prospect hasn't articulated the gap | "Right now your site is a brochure. Imagine it generating leads while you sleep. Here's how." |
| **AIDA** (Attention-Interest-Desire-Action) | Cold, no prior awareness | Subject grabs attention, observation builds interest, result creates desire, CTA drives action |

---

## TIER-BASED PERSONALIZATION

Not every email deserves equal effort. Use tiers:

### Tier 1 (Top 10% — Dream Clients)
- Fully custom first line referencing their recent content, funding, or hiring
- Takes 2-3 minutes per email
- Worth it for clients with $20K+ potential

**Example:**
> "Your post about scaling engineering teams after a Series A hit exactly what I'm seeing with clients."

### Tier 2 (Next 40% — Good Fit)
- Semi-personalized by industry vertical or company type
- "I work with a lot of [industry] companies dealing with [common problem]"

**Example:**
> "Most fintech founders I talk to say the same thing — their site was built for the pitch deck, not for converting customers."

### Tier 3 (Volume — Below Market)
- Highly targeted segment with shared pain point
- Less reply rate but scales

**Example:**
> "Companies that just raised a seed round often have a site that worked for fundraising but won't work for customer acquisition."

---

## THE 5-EMAIL SEQUENCE

### Email 1 (Day 0) — Trigger Opener
```
Subject: [Their trigger] / [Company]

Hi [Name],

[Trigger observation — must be specific to their week/month]

[Pain that trigger creates for someone in their role]

[Your connection — 1 sentence on how you've solved this]

[One result — "We helped [similar company] go from X to Y"]

Worth a 15-minute call to see if there's a fit?

[Your name]
```

### Email 2 (Day 3) — Case Study
```
Subject: Re: [Original subject]

Hi [Name],

Following up on my note from Tuesday.

One example of what I mean: we worked with [similar company].
They had [their problem]. After [our solution], they got [result].

Thought this might be relevant.

[Your name]
```

### Email 3 (Day 7) — Value Add (No Ask)
```
Subject: Thought you'd find this

Hi [Name],

Not pitching — just saw this and thought of our conversation.

[Link to relevant article/resource in their industry]

Hope it's useful.

[Your name]
```

### Email 4 (Day 12) — Direct Ask
```
Subject: Re: [Original subject]

Hi [Name],

I've sent a few notes and want to respect your time.

If this isn't relevant, just say "not now" and I'll stop.
But if you're curious at all — 15 minutes, and I'll show you
exactly what we'd do for [Company].

[Your name]
```

### Email 5 (Day 20) — Breakup (Steli Efti Formula)

**Structure:** Clear subject → ≤5 sentences → Personalize → Restate value → Single CTA

```
Subject: Should I stop emailing?

Hi [Name],

I've sent a few notes about auditing [Company]'s site for
production readiness.

No response — which either means timing is off, or it's
not relevant.

If it's the latter, just say "stop" and I'll disappear.

But if you're curious — 15 minutes, I'll show you what we
find in 90% of AI-built apps. Worth it?

[Your name]
```

**Breakup email timing:** After 3-4 touches over 7-10 days. Reply rate: 10-33% when done right.

---

## TRIGGER SIGNALS (Build Your List Around These)

These are real buying triggers. Scrape them with Scrapling:

| Signal | Source | How to Scrape |
|--------|--------|---------------|
| Recent funding round | Crunchbase, TechCrunch | `StealthyFetcher` on crunchbase.com/search |
| Active hiring (VP/Growth roles) | LinkedIn, Indeed | Extract job postings via Scrapling |
| Product launch | ProductHunt, Twitter | `get` on producthunt.com/launches |
| LinkedIn post about growth | LinkedIn | Monitor target profiles |
| Website redesign signal | BuiltWith, Wappalyzer | Check tech stack changes |
| New executive hire | LinkedIn, company news | Crunchbase + LinkedIn scrape |
| Conference/speaking event | Lanyrd, conference sites | Cross-reference with ICP |

**Berman's #1 signal:** Open job postings. A company hiring a VP of Sales is telling you exactly what problem they're trying to solve.

---

## SUBJECT LINE PATTERNS (Keep Under 50 Characters)

| Pattern | Example |
|---------|---------|
| Trigger reference | "Your recent funding round" |
| Specific observation | "[Company]'s site on mobile" |
| Question | "What if your site converted 3x better?" |
| Trigger + name | "[Name] — your LinkedIn post on scaling" |
| Pattern interrupt | "Not another cold email" |

## SOCIAL PROOF PATTERNS

In email, don't open with your name. Open with relevance. Social proof goes in Line 4:

Problem-level: "We helped [Company in same industry] solve this."
Data-level: "We audited 10 AI-built apps last month — 8 had exposed API keys."
Authority-level: "We're the team that [specific credential]."

**Optimal deployment:** Problem-level > Data-level > Authority-level for cold outreach. Authority-level only works when the authority is recognized.

## TRIGGER SIGNALS FROM TWITTER (Now Authenticated)

With Twitter API access, monitor these signals daily:

```bash
export TWITTER_AUTH_TOKEN="your_token"
export TWITTER_CT0="your_ct0"
twitter search "built with Cursor OR built with Lovable OR vibe coded my" -n 20
```

Pipe results to Twenty CRM as leads with signal_strength = "high"

---

## EMAIL PERFORMANCE (Real 2026 Benchmarks)

| Metric | Industry Average | Top Decile |
|--------|-----------------|------------|
| Open Rate | 20-35% | 45-55% |
| Reply Rate | 2.1% | 10.7% |
| Meeting Booked | 1-3% | 5-10% |

**Key numbers:** 
- First email gets ~58% of replies. Follow-ups get 42%. Stopping after one forfeits nearly half.
- One follow-up lifts responses by ~49%.
- Signal-based personalization outperforms firmographic 3-5x.

---

## IMPORTANT: What NOT to Do

- DO NOT use "I was looking at your website and noticed..." — everyone says this
- DO NOT open with your name and company — nobody cares until you've shown relevance
- DO NOT send HTML-heavy emails — plain text outperforms for cold outreach
- DO NOT personalize more than the first line — more than one specific detail feels creepy
- DO NOT write more than 5 lines — shorter = higher reply rate
- DO NOT send from a generic address — send from a real person
- DO NOT skip verification — bounce rate >2% destroys domain reputation

---

**Version 3.0 | Frameworks: Berman (Signal-Based) + Jason Bay (Permission-Based) + Steli Efti (Breakup) + PAS/BAB/AIDA**
**Tools: Mautic + Scrapling + twitter-cli (auth) + Twenty CRM**
