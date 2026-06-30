# SYNAPTIX STUDIO — CLIENT ONBOARDING KIT

> **Framework:** 5-Phase Agency Onboarding System
> **Goal:** First deliverable within 7 days of deposit
> **Tool:** Twenty CRM + Cal.diy + n8n

---

## THE 5-PHASE SYSTEM

Research shows most agency onboarding should complete within 3-7 business days. Beyond 14 days signals process problems.

### Phase 1: Close the Gap (Day 0 — Signing Day)

**Sales-to-Ops Handoff (15 min internal call):**
- What was promised in the sale
- What the client cares about most
- Any red flags from the sales process
- MEDDIC score from pipeline
- Chris Voss "what to expect" doc sent within 2 hours (prevents buyer's remorse)

**Apply the Hooked Model to the relationship:**
- **Trigger:** They signed. Send immediate welcome + next-step email.
- **Action:** Low-friction first task (fill intake form, 20 min).
- **Variable Reward:** Day 2 deliverable they didn't expect (competitor analysis, quick audit finding).
- **Investment:** They share their stack, goals, timeline → you now have leverage for the retainer conversation at project end.

**Actions:**
- [ ] Send welcome email within 1 hour (from founder/AM, personal)
- [ ] Confirm contract + SOW in project management tool
- [ ] Create client workspace in Twenty CRM
- [ ] Send intake questionnaire (same day, 5 biz day deadline)

**Welcome Email Subject:** You're in. Here's what happens next.
```
Hi [Name],

Deposit received. Let's build something incredible.

In the next 24 hours:
- Project Lead [Name] will book your kickoff call
- You'll receive the Project Brief (takes 20 min)

In the next 48 hours:
- We'll review your brief + research competitors
- Kickoff call to align on vision, timeline, deliverables

Your direct contact:
- Project Lead: [Name] — [email] — [WhatsApp]
- Studio Director: [Name] — [email]

Book Kickoff: [Cal.diy link]
```

### Phase 2: Internal Setup (Day 0-1)

- [ ] Team briefed on client business, goals, quirks
- [ ] Project workspace created (Twenty CRM)
- [ ] Folders for: deliverables, briefs, assets, comms
- [ ] Time tracking set up from Day 1
- [ ] Tools configured (GitHub repo, staging server, etc.)
- [ ] n8n workflow: welcome email → task creation → reminders

### Phase 3: Client Kickoff (Day 1-2)

**Pre-call (24 hours before):**
- [ ] Send agenda to client
- [ ] Review completed intake form
- [ ] Research top 3 competitors' sites
- [ ] Prepare 2-3 design directions

**Kickoff Call Agenda (60 min max):**
```
[0-5 min] Introductions — team by name and role (60 sec each)
[5-20 min] Brief review — confirm goals, success metrics
[20-35 min] Creative direction — share moodboards, get reaction
[35-50 min] Timeline + milestones — walk through the plan
[50-55 min] Communication norms — channels, response times
[55-60 min] Next steps — what happens now, who does what
```

**Key norms to establish:**
- Feedback in 48 hours per milestone (or project timeline shifts)
- One consolidated feedback doc (not scattered messages)
- Specific feedback ("increase font 2px" not "make it pop")
- Approval process: who signs off, how many rounds

**Post-call (within 24 hours):**
- [ ] Send recap email with: decisions made, action items, due dates
- [ ] This becomes the project's foundational document

### Phase 4: Workspace Build (Day 2-3)

- [ ] Client portal created (Notion guest access or Twenty CRM)
- [ ] Milestone plan shared
- [ ] Access credentials documented (password manager)
- [ ] File sharing set up
- [ ] Communication channel created (WhatsApp/Slack group)

**Client portal includes (single-page view):**
- Project status
- Upcoming deliverables
- Recent updates
- Key contacts

### Phase 5: Lock the Rhythm (Day 3-7)

- [ ] Recurring check-ins scheduled (weekly first month)
- [ ] Reporting format established
- [ ] First tangible deliverable shipped (Week 1)
- [ ] Ship something tangible in week 1 — a wireframe, audit finding, strategy doc.
      This breaks "did I make a mistake?" anxiety.

**Weekly status update format:**
> What shipped this week
> What's in progress
> What's blocked

**30-day review call scheduled** (not a sales call — relationship investment):
- Ask: what's working, what isn't, what we could do better

---

## PROJECT BRIEF (Intake Questionnaire)

**Send via Google Form or Twenty CRM. 20 minutes to complete.**

### Section A: Business Context
1. Company name and what you do (plain English):
2. Target customer (age, industry, problem):
3. What makes you different from competitors:
4. Top 3 competitors (URLs):

### Section B: Project Goals
5. ONE thing this project must achieve (leads / sales / credibility / awareness):
6. Success looks like in 90 days (specific numbers):
7. What stopped you from achieving this before:

### Section C: Design Direction
8. 3-5 websites you love (any industry):
9. 3 websites you HATE (and why):
10. Brand colors (hex codes if you have them):
11. Feeling: Premium / Playful / Bold / Clean / Dark / Technical

### Section D: Content + Technical
12. Existing copy? Photos? Or do we create?
13. Number of pages:
14. Features needed: forms / booking / chat / login / e-commerce / CRM integration
15. Current website URL:
16. Integrations needed (CRM, payment, booking, etc.):

### Section E: Timeline + Budget
17. Hard deadline:
18. Preferred launch date:
19. Budget confirmed (if value-based: what's the expected revenue impact?):

---

## MILESTONE TEMPLATE

Share with client after kickoff:

```
Project: [Client Name] — [Project Type]
Start: [Date] | Target Launch: [Date]

M1 (Day 1-2): Discovery — Brief + kickoff complete
M2 (Day 5): Design Direction — 3 homepage wireframes
M3 (Day 10): Homepage Design — Full mockup
M4 (Day 12): Client Review 1 — Feedback on homepage
M5 (Day 16): Revisions — Revised + inner pages
M6 (Day 18): Client Review 2 — Final approval
M7 (Day 24): Development — Full site built
M8 (Day 26): QA — Cross-browser, mobile, performance
M9 (Day 27): Client Review 3 — Final walkthrough
M10 (Day 30): Launch — Live on domain
M11 (Day 37): Post-Launch — 7-day monitoring + fixes

Review rounds: 3 included | Additional: $X/round
```

---

## HANDOFF CHECKLIST

### Pre-Launch
- [ ] All pages complete and approved
- [ ] All copy final and proofread
- [ ] Images optimized (WebP format)
- [ ] Favicon and OG images set
- [ ] Lighthouse: Desktop 90+ / Mobile 80+
- [ ] Cross-browser tested (Chrome, Safari, Firefox, Edge)
- [ ] Mobile responsive
- [ ] Forms tested and working
- [ ] Analytics installed (Matomo)
- [ ] SSL active

### Handoff Docs
- [ ] Access credentials (password manager export)
- [ ] "How to update your site" video (5 min Loom)
- [ ] Maintenance retainer offer sent

### Post-Launch
- [ ] Monitor 72 hours for bugs
- [ ] 30-day performance review (Core Web Vitals, traffic, conversions)
- [ ] Testimonial request on Day 3

---

## TESTIMONIAL REQUEST (Day 3 Post-Launch)

```
Subject: Quick favour — how's the site feeling?

Hi [Name],

Three days in — how's everything?

If you've been happy, we'd love a short testimonial.
2-3 sentences:
- What was the challenge before
- What we built
- What changed

You can leave it on our Google Business page → [link]
Or just reply to this email.

Thank you for trusting us.
```

---

**Version 3.0 | Framework: 5-Phase Agency Onboarding + Hooked Model (Client Retention)**
**Tools: Twenty CRM + Cal.diy + n8n + marketingskills/onboarding skill**
