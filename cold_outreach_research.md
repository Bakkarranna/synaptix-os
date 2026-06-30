# Cold Outreach, Lead Generation & Scripting: Complete Research Compendium

> Research date: June 2026 | Platforms searched: Web, Reddit, GitHub, LinkedIn, Medium, YC Library
> Sources: 120+ articles, 40+ expert profiles, 20+ GitHub repos, 15+ Reddit threads

---

## TABLE OF CONTENTS

1. [Cold Email Experts & Frameworks](#1-cold-email-experts--frameworks)
2. [Cold Calling Experts & Frameworks](#2-cold-calling-experts--frameworks)
3. [LinkedIn Outreach Experts & Frameworks](#3-linkedin-outreach-experts--frameworks)
4. [Lead Generation Experts & Frameworks](#4-lead-generation-experts--frameworks)
5. [Multi-Channel Outreach Playbooks](#5-multi-channel-outreach-playbooks)
6. [Cold Texting (SMS) for B2B](#6-cold-texting-sms-for-b2b)
7. [Scripting Frameworks](#7-scripting-frameworks)
8. [Reddit Community Insights](#8-reddit-community-insights)
9. [GitHub Open Source Tools](#9-github-open-source-tools)
10. [2026 Benchmarks & State of the Industry](#10-2026-benchmarks--state-of-the-industry)

---

## 1. Cold Email Experts & Frameworks

### Alex Berman
**Bio:** CEO of Berman Consulting (formerly Experiment 27). Generated 500K+ sales meetings via cold email. Author of the most comprehensive cold email playbook on the web (alexberman.com).
**URLs:** alexberman.com, `@alex_berman` on X

#### Key Frameworks:

**The Three Levels of Email Personalization (his core model):**
- **Level 1 - Basic Segmentation** (by job role, industry, company size) — baseline relevance. Write 5-6 variants per ICP segment.
- **Level 2 - Account-Level Personalization** — reference company-specific signals: recent funding, job postings, tech stack changes, product launches. The sweet spot for most B2B. 2-3 min/prospect.
- **Level 3 - Hyper-Personalization** — reference LinkedIn posts, articles written, podcast appearances, specific trigger events. Only for high-ACV deals (top 10% of prospects).

**Tiered Personalization Effort Allocation:**
- Tier 1 (top 10% of prospects -> high ACV): Fully custom first line, manual research, 2-3 min/email
- Tier 2 (next 40%): Semi-personalized by industry vertical or company type
- Tier 3 (volume plays): Highly targeted segment with shared pain point — personalization at segment level

**The Three Copywriting Frameworks for Cold Email:**
1. **PAS (Problem-Agitate-Solution):** Best when prospect knows they have a problem. Name the pain, stir it, position your solution.
2. **BAB (Before-After-Bridge):** Paint current frustrating reality, describe solved world, present bridge.
3. **AIDA (Attention-Interest-Desire-Action):** Oldest and still reliable. Subject+opener grabs attention, observation builds interest, connect to goals creates desire, soft CTA drives action.

**The 100-Word Email Structure:** Under 100 words, optimized for mobile, line breaks, no filler ("I hope this email finds you well"). First line = specific observation. Ends with a question mark (not a statement CTA).

**Signal-First Workflow (2026 update):** Uses Claude Code + Python (Polars) to launch parallel research agents that find specific signals about each prospect, writes first lines, outputs to Instantly/Smartlead via CLI. Process 1,000 contacts/day with genuine signal-based personalization.

**Key differentiator:** The "audit step" — send 50 emails, manually grade every first line on a scale from generic to specific. If fewer than 80% pass the "only makes sense to this person" test, fix the prompt before scaling.

---

### Steli Efti (Close.com)
**Bio:** CEO of Close CRM, YC alum (co-founded ElasticSales). Author of "The Follow-Up Formula." Has consulted with thousands of startups on outbound sales.
**URLs:** close.com/blog, `@Steli_Efti` on X

#### Key Frameworks:

**The Follow-Up Formula (Cold Outreach Cadence):**
- Day 1: Initial cold email
- Day 2 (different time): First follow-up — modified version, different format (long→short or short→long)
- Day 4: Second follow-up — distinct CTA, ask for response/meeting
- Day 8: Third follow-up — relevant content piece (case study, whitepaper)
- Day 12: The Breakup Email — final attempt, loss aversion trigger

**For cold leads specifically:** Follow up max 6-8 times. If no response after 8, move on. For warm leads (had interaction), continue indefinitely until definitive "no."

**The Breakup Email Formula:**
- Subject line: Clear and direct — no beating around the bush
- ≤5 sentences
- Personalize (name, company, pain point)
- Restate value clearly
- Single CTA (booking link or reply)
- Timing: After 3 touches in ~7-10 days
- Expected reply rate: 10-33% when timing + tone are right

**The Anatomy of a Great Cold Email (3-part structure):**
1. **Subject line:** Piques curiosity AND promises something the body delivers
2. **Body text:** Answers instantly: Who is this? What do you want? Why me (specifically)?
3. **CTA:** Single, specific call to action. One only.

**The "Don't trick them" rule:** His most famous lesson — "Really disappointed..." subject line got 80% open rate but then destroyed trust. Open rate is vanity. Reply rate is what matters.

**Follow-up timing principles:**
- Phone: Most urgent but least persistent
- Email: Least urgent but can sustain frequency over longest period
- Optimal cold cadence: Day 1 → Day 2 → Day 4 → Day 8 → Day 14 → Day 28 → Day 58 → monthly

---

### Jason Bay (Outbound Squad)
**Bio:** CEO of Outbound Squad. Has trained 20,000+ reps at 250+ companies including Shopify, Gong, Zoom, Rippling. Analyzed 85M+ cold emails with Gong.
**URLs:** outboundsquad.com, `@jasondbay` on LinkedIn

#### Key Frameworks:

**The Hierarchy of Relevance (who to target):**
- **Company level:** What's happening at companies that buy? Is the company in motion?
- **Person level:** What's going on in the buyer's world? Execs respond to company-level relevance (strategic objectives); managers respond to personal context (role pain).

**The 4-Part Messaging Matrix:**
1. **Priorities:** What your buyer is measured on (e.g., CISO = reducing risk)
2. **Current Solutions:** How they solve it today (e.g., spreadsheets)
3. **Problems:** What's broken in current approach
4. **Aspirations:** The future state they want

**KISS Sequencing (Keep It Simple Sequencing):**
- Day 1: Email + Call + Social
- Day 3: Call + Bump Email
- Each week = new messaging angle using a different problem from the Messaging Matrix
- Week 1: Angle 1; Week 2: Angle 2; Week 3: Angle 3

**Cold Call Framework (First 60 Seconds):**
- Objective is NOT to book a meeting — it's to create an environment where authentic conversation has a high probability of happening
- **Permission-Based Openers (PBOs):** Get their opt-in before pitching
  - The Classic: "I know I'm catching you in the middle of your day. Do you have a minute for me to share why I'm calling?"
  - The Gong Opener: "I don't suppose I caught you at the WORST time did I?"
  - Start With Relevance: "I'm calling about [specific trigger event]"
  - Disarmingly Blunt: "You're going to hate me, I'm cold-calling you, feel free to hang up"

**Cold Email Data Report findings (85M+ emails):**
- 5x more likely to get a reply if you personalize the email
- Subject lines 1-5 words have highest open rates (mirror internal communication)
- Adding social proof increases reply rate by 41%
- "Pitching" in cold emails reduces reply rates by up to 57%

**10-80-10 Rule (AI usage):** 10% AI does research and personalization, 80% human writes the email, 10% AI proofreads.

---

### Arvid Kahl
**Bio:** Co-founded FeedbackPanda ($55K MRR, sold in 2 years). Author of "Zero to Sold" and "The Embedded Entrepreneur." Bootstrapped SaaS advocate.
**URLs:** thebootstrappedfounder.com, `@arvidkahl` on X

#### Key Philosophy: Audience-Driven NOT Cold Outreach

**The Embedded Entrepreneur Framework (5 steps):**
1. **Audience Discovery:** Choose who you want to serve BEFORE building product
2. **Audience Exploration:** Find where they hang out (Facebook groups, subreddits, communities)
3. **Problem Discovery:** Observe, listen, find what they complain about most
4. **Audience-Building:** Create content for them, become a valued contributor
5. **Product Creation:** Build what they need — they're already your audience

**Key Differentiator:** Explicitly anti-cold-outreach for founders. Believes you should embed in communities, not spray emails. "The product emerges from in-depth observation and conversations inside a niche."

**Building in Public:** Share your journey transparently. Treat readers/audience as peers beside you, not beneath you. The honesty compounds trust.

---

### Heather Morgan (Salesfolk)
**Bio:** CEO of Salesfolk. "Queen of Cold Email." Written 10,000+ cold emails for 560+ B2B companies (Lyft, Kissmetrics). Known for 30-40% response rate campaigns.
**URLs:** salesfolk.com

#### Key Frameworks:

**The Two-Step Personalization System:**
1. **Laser-focused buyer profiles:** Build composite personas from 10 prospects. Pick ONE pain point per campaign. Narrow list until 50-80% experience that pain.
2. **Scalable templates with custom inserts:** "{!Company}", "{!Industry}", "{!Competitor}" — not just {{first_name}}.

**The 8-Touch Campaign Architecture:**
1. Map value propositions (test first 3-4 emails)
2. Choose psychologies per value prop (fear of loss, greed, competition, vanity/curiosity)
3. Sequence flow: General/vague early → increasingly direct/aggressive
4. Each email adds new and unique value
5. 3-5 sentences max (6-7 only if necessary)
6. 33% of positive responses come from emails 5-8

**Social Engineering in Cold Email (her signature):**
1. **Break the ice right away** — first 3 seconds determines if they keep reading
2. **Use rapport-building language and tone** — language you'd use getting to know a new friend
3. **Provide value** — actual benefit incentivizing response
4. **Ask a sincere question** — highest response rates come from well-thought-out questions

**The "Behavioral Trigger" List Building:** Use triggers like "hiring sales people," "raised funding within last 12 months," "posted relevant job opening" to find prospects the email will resonate with.

---

### Matt Heinz (Heinz Marketing)
**Bio:** President of Heinz Marketing. Author of "Full Funnel Marketing." Creator of the Predictable Pipeline Method.
**URLs:** heinzmarketing.com, `@heinzmarketing`

#### Key Framework: Predictable Pipeline Method

**5 Core Values:**
1. **Target Market** — define ICP with painful specificity
2. **Sales Cycle** — understand the buying journey, remove friction
3. **Team** — establish clear roles, skills, responsibilities
4. **Message** — consistent, buyer-centric messaging across channels
5. **Reach** — multi-channel outreach plays (phone, email, social, events, IRL)
6. **Enabling Technology** — tools aligned with processes
7. **Metrics of Success** — outcome-based, not activity-based

**Predictable Pipeline Maturity Model:**
- Initial (ad-hoc) → Defined → Managed → Optimized
- Score yourself on each value, target moving to next level

**Pipeline Velocity Formula:** `(# qualified opportunities × avg deal value × win rate) / sales cycle length`

**Key advice:** Speed is table stakes, follow-up is where deals are won. Need multithreading (engaging multiple stakeholders in buying group). A weekly pipeline council (sales + marketing) keeps alignment.

---

### Pete Kazanjy (Founding Sales / Modern Sales)
**Bio:** Founder of TalentBin (acq. by Monster), Atrium, Modern Sales Pros. Author of "Founding Sales: Sales for Founders (and Others) in First-time Sales Roles."
**URLs:** foundingsales.com, moderndevsales.com

#### Key Framework: Two Stages of Sales

**Stage 1 — Experimentation (pre-PMF):**
- Founder must sell personally — tight loop between articulating value, presenting, listening, and building
- Minimum viable sales motion: 30-50 qualified prospects run through your process, 10-20 converting
- Goal: Develop a repeatable, transferable understanding of how your product gets sold

**Stage 2 — Scaling (post-PMF):**
- Document the motion into a playbook
- Hire coachable, hungry generalists to execute the playbook
- Instrument the funnel (metrics, pipeline, conversion)

**The 5 Stages of Buyer Belief:**
1. Problem Awareness
2. Problem Prioritization
3. Solution Preference
4. Commercial Agreement
5. Championship

**ICP Definition (3 nested questions):**
1. What companies have the problem?
2. What people in those companies feel it most?
3. What does the buying process look like?

---

### Morgan J. Ingram (AMP Creative / AMP Social)
**Bio:** 4x LinkedIn Top Sales Voice, 180K followers. Built GTM programs for Salesforce, Slack, Google. Trained teams at 100+ companies. Credited with $50M+ influenced pipeline.
**URLs:** `@MorganJIngram` on LinkedIn/X, AMP Social

#### Key Frameworks:

**The 5C System of Social Selling:**
1. **Clarity** — painfully specific ICP (not "marketers" but WHICH marketers, at WHAT stage company, with WHICH pain points)
2. **Connection** — intentional connecting. Executives check LinkedIn early morning or late evening. Blank connection requests have higher acceptance rates than notes.
3. **Conversation** — Never "pitch slap." Wait a few days after connecting. Use video or voice notes for pattern interruption. Never state a problem as fact — say "not sure if this is the obstacle" to remove friction.
4. **Comment** — Content starts with commenting on the right people. Framework: offer an insight + ask a question.
5. **Content** — Most sellers don't need to be influencers, just curators. Take 3 lessons from a podcast/article, make them your own, share once a week. That puts you in top 1-3% of posters.

**Inverse Thinking:** Instead of "what should I do?" ask "what is everyone else doing that annoys buyers?" Then do the opposite. Everyone adds notes to connection requests? Send blank ones. Everyone sends long generic DMs? Send short videos. Everyone pitches immediately? Wait a few days.

**The 11-Touch Multi-Channel Campaign:**
- Day 1: LinkedIn connection request with personalized note
- Day 2: Email with CTA
- Day 3: Call + voicemail
- Day 3 (immediately after): Second email in same thread with more info
- Day 5: Call (no voicemail)
- Day 7: Call + voicemail
- Day 10: Email in new thread
- Day 12: Call
- Day 15: Email
- Day 18: Call
- Day 20: Final email

**LinkedIn Message Structure:** Observation → Context → Problem + Value → CTA. Use "push-pull" line to lower resistance.

**10-30-10 Framework for Voice Notes:** 10 seconds of relevance proof → 30 seconds of value → 10 seconds of CTA. Achieves 20% meetings-booked rate.

---

### David Dulany (Tenbound)
**Bio:** Founder/CEO of Tenbound (100% focused on sales development research & advisory). Co-author of "The Sales Development Framework."
**URLs:** tenbound.com

#### Key Framework: Sales Development Program (6 Elements)
1. **Strategy** — align sales dev model with market dynamics and buyer's journey
2. **Specialization** — segment prospect universe, specialize roles (hybrid SDRs underperform specialized by 30-50%)
3. **Recruiting** — hire for intelligence, coachability, curiosity, grit, communication
4. **Retention** — engage, develop, motivate. SDR tenure averages 14 months average
5. **Execution** — onboard, craft buyer-based messaging, design effective outreach cadences (12-18 touches, 18-21 business days; 40% call / 40% email / 15% social / 5% video)
6. **Leadership** — quota setting, measuring what matters, acceleration technologies

**Key differentiator:** "Good sales development is essentially project management." Train on persona, not product. Lead with the problem you solve, not your solution. Data is the lifeblood of SDR.

---

### Sujan Patel (Mailshake)
**Bio:** Co-founder of Mailshake. Published "The State of Cold Email 2025" report. B2B cold email expert.
**URLs:** mailshake.com, `@sujanpatel` on LinkedIn

#### Key Findings (State of Cold Email 2025 Report):
- 69% of respondents said cold email results declined year-over-year
- Individual personalization outperforms group-based across every metric
- Most senders generate <10 leads/month; top performers hit 50+ with right strategy

**PVP Method:** Personalization → Value proposition → Purpose (CTA)

**AI Usage (10 ways):** Writing personalized cold emails at scale, making emails more concise, researching prospects rapidly, getting critical feedback, creating sales scripts, writing follow-up emails.

**Delivery tip:** 3 spam complaints per 1,000 emails = Google blacklist. Audit every email through that lens before sending.

---

### YC Library — Founder-Led Sales & Cold Email
**URLs:** https://www.ycombinator.com/library

**Aaron Epstein's Cold Email Funnel (for founders):**
1. Map backwards from goal (1 customer)
2. Target: better to send 100 targeted emails than 1,000 untargeted
3. The ask is NOT the sale — it's the next step (a meeting, a demo)
4. Founders should send these personally. People take founder/CEO emails more seriously.
5. Do it manually first to learn, scale later

**YC Canonical Founder Cold Email Structure:**
```
Subject: [specific, relevant, reference their recent work]

Hi [first name],

[One sentence showing you know them specifically]

[One sentence: why you're emailing THEM about THEIR specific problem]

[One sentence: what you built, why it's different — lead with job to be done]

[The ask: specific low-commitment next step. "Could I show you a 10-min demo?"]

[Your name]
```

**Benchmark:** Nathan Barry's numbers — 100 emails → 5-7 customers is the floor. Below ~5% response rate, the list is wrong. Below ~1% conversion, the email or product is wrong.

**Warm intro beats cold email by 5-10x.** Exhaust your network first.

---

## 2. Cold Calling Experts & Frameworks

### Steli Efti (also covered above)
**Key cold calling principles for startups:**
- Pick up the phone. Most founders avoid it. Don't.
- "The ball is never in their court. It's always your job to champion the relationship."
- For cold calling: 8 follow-ups is the right number. Fewer leaves money on the table.
- Tone: human, not scripted. You're a person, not a telemarketer.

---

### Aaron Ross (Predictable Revenue)
**Bio:** Author of "Predictable Revenue." Built $100M outbound engine at Salesforce.com. Coined "Cold Calling 2.0" and the SDR role.
**URLs:** predictablerevenue.com

#### Key Framework: Cold Calling 2.0

**The Core Innovation:** Don't cold call the decision maker directly. Instead:
1. Send short, plain-text email to a SENIOR person (CEO/VP) asking for a referral DOWN
2. No pitch in the email. No attachments. No logos.
3. Subject line = person's name
4. Body = 3 sentences asking "Could you point me to the right person?"
5. Response rate: 7-9% from C-level email vs <1% from cold dials
6. Call only the warm referral back

**The Referral Call "Magic Question":** "Are you the right person to talk to about X, or could you point me toward whoever owns that?" — the question itself converts skeptical executives into helpful routers.

**The Predictable Revenue Formula:**
```
Consistent Top of Funnel + Relentless Follow Through + Table Stakes = Predictable Revenue
```

**Role Specialization (the architecture):**
- Market Response Reps (handle inbound)
- Sales Development Reps (outbound prospecting)
- Account Executives (closers)
- Account Managers / CS (retention + expansion)
- Each role = separate quota, comp plan, career path

**The Signature Ratio:** 100 prospects researched → 10 responses → 5 qualified opportunities → 1 closed deal. Track for 90 days, then reverse-engineer headcount for any revenue target.

**The SDR KPI Shift (heresy at the time):** SDR dials are a vanity metric. The only KPI that matters = qualified opportunities passed to AEs per month.

---

### Mike Weinberg (New Sales Simplified)
**Bio:** Consultant, coach, speaker. Author of "New Sales. Simplified." (12-year bestseller, 2100+ 5-star reviews). Specializes in new business development.
**URLs:** mikeweinberg.com

#### Key Framework: The New Sales Driver (3 Elements)

1. **Selecting Targets** — A FINITE, WRITTEN, PRIORITIZED list. Not a vague ICP. Not a 10,000-row spreadsheet. A real list of 30-75 named accounts you're committed to pursuing this quarter.
2. **Creating & Deploying Weapons** — Three weapons every rep must own: the Power Statement (sales story), the proactive phone call, and the face-to-face sales call.
3. **Planning & Executing the Attack** — Personal business plan + weekly schedule with real prospecting hours in 2-hour minimum blocks.

**The Power Statement (3 building blocks):**
1. Client issues addressed (lead with the problem, not the product)
2. Your offerings (what you do about those issues)
3. Your differentiators (why you're different)

**The "So What" Test:** After every statement, ask "so what?" from the buyer's perspective. If you can't answer, cut it.

**Prospecting blocks:** Minimum 4 hours/week in 2-hour blocks. Non-negotiable, recurring, on the calendar. All prospecting protects time — it's the job, not an afterthought.

**The Cold Call (Weinberg calls it "proactive call"):** Dialogue, not monologue. You're calling to start a conversation, not deliver a pitch.

---

### Jeb Blount (Fanatical Prospecting)
**Bio:** CEO of Sales Gravy. Author of "Fanatical Prospecting" (500K+ copies sold). One of the Top 50 Most Influential Leaders in Sales.
**URLs:** jebblount.com, fanaticalprospecting.com

#### Key Frameworks:

**The 30-Day Rule:** Your pipeline should always have enough opportunities to hit quota for the next 30 days. If you stop prospecting, day 31 your pipeline dries up.

**The Law of Replacement:** You must replace every lost/dead deal with a new opportunity — immediately.

**The Law of Familiarity:** People buy from familiar people. Use social channels to build familiarity BEFORE you call.

**The 5-Step Telephone Framework:**
1. Use prospect's name to get attention
2. Identify yourself + your company
3. State reason for call in one sentence (what you need)
4. Bridge with a "because statement" (why they should give you time)
5. Ask for what you want and give them opportunity to respond

**Because Statement Workshop:** The "because" is where you connect your ask to THEIR interest (save time, make money, solve problem).

**The 3-Part Prospecting Email:**
1. Hook (subject line earns the open)
2. Relevance (one sentence proving you researched them)
3. Ask (one specific call to action)

**The 7-Step Text Message Prospecting Framework:** For SMS outreach — timing and technique are critical because text is so personal.

**RBO Turnaround Framework:**
- R = Reflex responses ("I'm not interested")
- B = Brush-offs ("send me an email")
- O = Objections ("we already have a vendor")
- Respond: Anchor (empathy) → Disrupt (reframe) → Ask again (smaller commitment)

**High-Intensity Prospecting Blocks (HIPB):** 90 minutes, no email, no Slack, no interruptions. Pure outreach.

---

### Trish Bertuzzi (The Sales Development Playbook)
**Bio:** Founder/CEO of The Bridge Group. 20+ years benchmarking inside sales orgs across 400+ SaaS companies. Author of "The Sales Development Playbook."
**URLs:** bridgegroupinc.com

#### Key Framework: 6 Elements of Sales Development

1. **Strategy** — Align model with market dynamics. Are SDRs pipeline-only or full-cycle? Inbound? Outbound? Both?
2. **Specialization** — Hybrid SDRs underperform specialized by 30-50%. Context-switching kills. Outbound SDRs need extended patience for longer cycles.
3. **Recruiting** — 5-dimension rubric: Intelligence, Coachability, Curiosity, Grit, Communication.
4. **Retention** — Average SDR tenure = 14 months. Build career paths.
5. **Execution** — Cadences of 12-18 touches over 18-21 business days. Mix: 40% call / 40% email / 15% social / 5% video.
6. **Leadership** — Set quota, measure what matters, build the tech stack.

**Key Quote:** "Hybrid SDRs are the most expensive form of mediocre pipeline."

**What kills SDR effectiveness:** Rush to demo syndrome. Managers not managing the process. Under-investing in onboarding.

---

### Mark Roberge (The Sales Acceleration Formula)
**Bio:** Former Chief Revenue Officer at HubSpot (grew revenue 6,000%, 1→450 employees). Author of "The Sales Acceleration Formula." Known as "The Sales Scientist."
**URLs:** markroberge.com, Harvard Business School lecturer

#### Key Framework: The 4 Formulas

1. **Sales Hiring Formula:** Hire the same successful salesperson every time using data, not gut.
   - HubSpot's criteria: Coachability > Curiosity > Intelligence > Work Ethic > Prior Success
2. **Sales Training Formula:** Train every salesperson in the same manner (Inbound selling philosophy aligned with modern buyers)
3. **Sales Management Formula:** Hold salespeople accountable to the same process using data-driven coaching
4. **Demand Generation Formula:** Provide salespeople with the same quality AND quantity of leads every month

**Key Differentiator:** Data-driven everything. Replace intuition with process. Apply engineering mindset to sales.

---

## 3. LinkedIn Outreach Experts & Frameworks

### Justin Welsh
**Bio:** Grew from 2,000 to 780K+ LinkedIn followers. Generated $10.8M+ in business revenue from LinkedIn alone. No ads. Creator of LinkedIn OS.
**URLs:** justinwelsh.me, `@justinwelsh` on LinkedIn

#### Key Framework: The LinkedIn Operating System

**Content Structure (every post follows this):**
1. **The Trailer** — Everything visible before "see more." First line breaks the scroll. Second line builds tension. Last line before cutoff promises payoff.
2. **The Meat** — Delivers on what trailer promised. Short paragraphs, numbered lists, fast pacing.
3. **The CTA/Call to Comment** — Direct question or invitation. Comments extend reach.

**The Link-in-Post Strategy:** Publish without external links. Let post accumulate organic reach (first 2-3 hours). THEN edit to add business link/CTA. LinkedIn penalizes posts with external links ~60% reach reduction.

**The 8 Moves that Cracked LinkedIn's Code:**
1. Write about your journey, not your expertise (vulnerability > authority)
2. Repurpose best content regularly (play your hits often)
3. Create a signature framework people talk about
4. Solve one expensive problem repeatedly
5. Turn weaknesses into your brand
6. Build in public with real numbers (specificity creates trust)
7. Focus on one platform until it hurts (depth > width)
8. Document the system, not the success (HOW you made $1M, not $1M)

**Key Differentiator:** NOT cold outreach — content-driven inbound. His system turns LinkedIn into a lead generation engine without sending cold DMs.

---

### Richard van der Blom
**Bio:** Author of the annual LinkedIn Algorithm Insights Report (the most data-backed independent study of the platform). Analyzed 1.3M posts from 50,000+ creators for 2026 edition.
**URLs:** richardvanderblom.com

#### Key 2026 Algorithm Findings:

**Major Shift: Relationship Graph → Interest Graph**
- Your follower count no longer predicts your reach
- Topic authority determines visibility now
- Reach is down 60% for active creators over last 2 years

**Key Data Points:**
- 80% of comments in first 5 minutes of any post are written by AI
- Documents (carousels) under 10 slides with short copy perform best
- Company page reach grew 33% while personal profiles fell
- Saved posts now drive future reach (a like means little, a save means everything)
- Mobile dominates at 72% — shorter sessions, faster swipes
- You have 1.3 seconds to win or lose your audience

**Format Performance (2026):**
1. Documents/carousels (his favorite) — educational content, process breakdowns, authority pieces
2. Text + image (infographics best)
3. Text-only — algorithm has warmed up to it again
4. Native video — heavy production, but strong reach when done well
5. Articles & newsletters — up 202% in engagement

**Topic Fingerprinting:** You must establish topic authority by consistently posting about 1-2 core subjects. Spreading across too many topics kills reach.

---

### Sam Horn (The Intrigue Agency)
**Bio:** 3x TEDx speaker. Author of 10 books including "POP!" and "Tongue Fu!" Hired by NASA, Google, Intel, Capital One. LinkedIn Learning instructor.
**URLs:** samhorn.com, `@samhorn` on LinkedIn

#### Key Framework: POP! (Purposeful, Original, Pithy)

**Purposeful:** Does it accurately articulate your essence AND position you positively?
**Original:** What distinguishes you from everyone else in your category?
**Pithy:** Concise and precise. Under 7 words ideally. Can people repeat it after hearing it once?

**The Eyebrow Test:**
- Eyebrows crunch up = confused (confused people don't say yes)
- Eyebrows don't move = not moved
- Eyebrows go up = intrigued (they want to know more)

**The 10C Methodology:** Used to coach high-stakes talks at UN, Facebook, Google, Cleveland Clinic.

**Key Technique for Intrigue:** "Show them the fish" — turn an idea into an image so people SEE what you're saying. Make the intangible tangible.

---

### Will Wang / LinkedIn Automation (aggregated research)

**Source:** Multiple 2026 guides (SyncGTM, ScaliQ, Dealsflow, multiaccountops)

#### Key Framework: 5-Layer LinkedIn Automation Architecture

1. **Trigger Source** — Live events, behaviors, signals (not just ICP lists)
2. **Decision Engine** — Rules that match triggers to sequences, apply ICP scoring, enforce rate limits
3. **Content Layer** — Personalization using real signals
4. **Execution Layer** — Cloud-hosted browser on residential IP, 20-25 weekly invite cap enforced in code, randomized timing (3-15 min between actions), business-hours-only, CAPTCHA detection
5. **Intelligence Layer** — Reply classification with AI, route interested replies in <15 min

**Safety Rules for Scaling:**
- 2-4 week warm-up of organic activity before automation fires
- 20-25 connection requests/week/account max
- 50-200 DMs/week per account after warming
- Different IP + device fingerprint per account
- Never centralize login
- Monitor reputation daily

---

### Bruno Boksic
*(Note: Major LinkedIn messaging authority is actually associated with different experts. Research shows Bruno Boksic is primarily an HR/content writer, not a LinkedIn outreach framework creator.)*

**Correction/Clarification:** The most authoritative LinkedIn messaging frameworks come from:
- **Morgan J. Ingram** (5C System — see above)
- **Justin Welsh** (content-driven inbound)
- **Sam Horn** (intrigue-based communication)

---

## 4. Lead Generation Experts & Frameworks

### Hiten Shah
**Bio:** Co-founder of Crazy Egg, KISSmetrics, Quick Sprout. Serial SaaS entrepreneur. Product-led growth pioneer.
**URLs:** hitenism.com, `@hnshah` on X

#### Key Framework: 3-Question Marketing Framework

1. **Who is your target customer?** (What does your product do? What problem does it solve? Who wants this solved?)
2. **Where do they hang out?** (Online communities, platforms, events — where do they congregate?)
3. **How do you engage them?** (Method of engagement, research deeply on how to use it best, focus on target audience, deliver tremendous value)

**Product-Led Lead Gen:**
- Build distribution INTO the product (integrations, APIs, "powered by" branding)
- Growth loops: make the product grow itself (KISSinsights got 25K signups with $0 marketing via a product-based channel)
- Content marketing: KISSmetrics blog became primary acquisition channel via educational content

**Data-Informed Approach:**
- Start with hypothesis, validate with customer interviews
- Summarize data in one sentence
- Always be testing (A/B testing, usability research)
- Deploy data across teams

---

### Sean Ellis
**Bio:** Coined "growth hacking." Head of growth at Dropbox, Eventbrite. Author of "Hacking Growth" (750K+ copies sold). Created the Sean Ellis PMF Test.
**URLs:** startup-marketing.com, `@seanellis` on X

#### Key Framework: The Sean Ellis Product-Market Fit Test

**The Single Question:** "How would you feel if you could no longer use this product?"
- Very disappointed → Somewhat disappointed → Not disappointed → N/A

**The Threshold:** 40% "Very Disappointed" = strong PMF indicator. Validated across nearly 100 startups.

**Survey Follow-ups (the roadmap):**
1. What type of people would most benefit from this product? (refine ICP)
2. What is the main benefit you receive? (true "Job to Be Done")
3. How can we improve? (feature backlog)

**Score Interpretation:**
- <20%: Solving wrong problem or targeting wrong audience. Go back to user research.
- 20-39%: Close. Focus on converting "Somewhat Disappointed" → "Very Disappointed"
- >40%: PMF achieved. Shift to scalable customer acquisition.

**Growth Investment Priority Order:**
1. Activation/onboarding (fix root cause of low activation — usually positioning/messaging)
2. Retention
3. Monetization
4. Referral
5. Acquisition

**ICE Prioritization Framework (Impact, Confidence, Ease):**
Rate each growth idea 1-10 on all three. Sort by total score.

---

### Russell Brunson (ClickFunnels)
**Bio:** Co-founder of ClickFunnels. Took company from $0 to $100M+ ARR in <7 years. Author of "DotCom Secrets," "Expert Secrets," "Traffic Secrets."
**URLs:** russellbrunson.com, clickfunnels.com

#### Key Framework: The Value Ladder

1. **Bait** (Lead magnet → email address)
2. **Frontend** (Lowest price product — $7 tripwire)
3. **Middle** (More expensive/valuable)
4. **Backend** (Most expensive/valuable — high-ticket)

**Hook, Story, Offer Framework:**
- **Hook:** Captures attention in a crowded marketplace
- **Story:** The story that changes beliefs and inspires action
- **Offer:** Bundle products and add value until offer is irresistible

**The Epiphany Bridge (Storytelling Framework):**
1. Start with where your audience is
2. Transfer your excitement/belief through story
3. Bridge the gap between their current state and desired outcome
4. Let them reach the buying conclusion themselves

**Lead Funnel Architecture:**
- Lead magnet (digital bait)
- Squeeze page (high-converting landing page)
- Thank you page (deliver lead magnet)
- Frontend offer page (tripwire)
- Follow-up sequences (email/SMS)

---

## 5. Multi-Channel Outreach Playbooks

### The Consensus Structure (aggregated from 10+ sources):

**Optimal Sequence Length:** 8-12 touches over 14-21 days. Below 6 touches = not enough. Above 12 = diminishing returns.

**Channel Split (recommended ratios):**
- 45-50% Email
- 20-25% Phone
- 20-25% LinkedIn
- 5-10% Video/Voice

**The Standard Cadence (most common across sources):**

| Day | Channel | Action |
|-----|---------|--------|
| 1 | LinkedIn | Profile view (passive signal) |
| 2 | Email | Personalized cold email, problem-hook |
| 3 | LinkedIn | Connection request (no note or light contextual note) |
| 4-5 | Email | Follow-up, social proof or case study |
| 5-7 | LinkedIn | DM (if connected) or comment on their post |
| 8 | Phone | First call + voicemail (under 30 seconds, reference email) |
| 10 | Email | New angle, pattern interrupt |
| 12 | LinkedIn | Share relevant resource via DM (if connected) |
| 13-14 | Phone | Second call, different opener |
| 16-18 | Email | Direct ask with specific time proposals |
| 21 | Email | Breakup email |

### Threading (the key differentiator):
Every channel references every other channel. Example:
- Email Day 1: "Noticed [trigger event]..."
- LinkedIn connection Day 3: references same trigger
- Phone Day 8: "I sent you an email about [trigger]..."
- LinkedIn DM Day 12: "Following up on my email from last week..."
- This creates a SINGLE CONVERSATION across channels, not 3 uncoordinated pitches.

### Signal-Based Escalation:
- Prospect opened 2+ emails but no reply? → Trigger phone call
- Prospect active on LinkedIn but not responding to email? → Lead with LinkedIn
- Connection request unaccepted for 7 days? → Don't send follow-up message → Switch to email referencing the attempt
- Prospect hasn't opened last 3 emails? → DON'T send 4th email → Switch to LinkedIn or phone

### The Breakup Email (final touch):
Always present. Ends the sequence. "I've reached out a few times and haven't heard back. I'll close the loop on my end. If [topic] becomes a priority, just reply." Consistently produces highest reply rate of any single touch (8-15%).

---

## 6. Cold Texting (SMS) for B2B

### The Regulatory Landscape (2026)

**Three Overlapping Frameworks:**
1. **TCPA (Telephone Consumer Protection Act)** — US federal law, enforced by FCC + private litigation. Fines: $500-1,500 per violation.
2. **CTIA Messaging Principles** — Industry standards enforced by carriers (T-Mobile, AT&T, Verizon)
3. **A2P 10DLC Registration** — Mandatory since Feb 2025. Unregistered traffic blocked by carriers.

**The Cardinal Rule:** You NEED prior express written consent before the first SMS. A publicly listed phone number on LinkedIn or ZoomInfo does NOT constitute consent.

**How to Get Consent (Compliant Methods):**
1. Opt-in checkbox on sign-up/demo request/pricing form
2. Verbal consent during a phone call (for informational texts only, not promotional)
3. Text-to-join keyword (prospect texts your keyword to initiate)

**2026 Rule Changes:**
- **Consent revocation (April 2025):** Opt-outs accepted via ANY reasonable method (STOP reply, email, voicemail, verbal). 10 business days to process.
- **One-to-one consent (Jan 2026):** Each sender must obtain its own consent. Cannot share across brands. Closes the "lead generator loophole." *(Note: vacated by 11th Circuit Jan 2025, eliminated by FCC late 2025 — but safest to still get direct consent)*
- **SMS = "call" under TCPA (March 2026, Rabbit v. Rohrman):** Every unscrubbed marketing text sent to a DNC-registered number = potential $500/msg claim.

### Who's Doing B2B SMS Well
- **Close CRM** (Steli Efti) — texting as follow-up within CRM workflows
- **Mailshake** (Sujan Patel) — multi-channel including SMS
- **Instantly** — SMS sequencing
- **Conduyt** — built-in opt-in tracking, 10DLC, STOP handling

### Effective B2B SMS Templates (compliant)

**Template Structure:**
1. Identify yourself (5 words)
2. One piece of value
3. Low-friction ask
4. Opt-out instruction

**Example:** "Hi [name], [your name] from [company]. We helped [similar company] achieve [specific result]. Worth a 5-min chat this week? Reply STOP to opt out."

**Rules:**
- Under 160 characters
- Send only 8 AM - 9 PM prospect's local time
- Max 3 follow-ups
- Immediate STOP/UNSUBSCRIBE implementation
- Verify number is mobile (not landline) before sending
- Treat every send like a one-to-one conversation

---

## 7. Scripting Frameworks

### How Real Pros Write Scripts vs AI-Generated Scripts

**The Pro Method (aggregated from Jason Bay, Morgan Ingram, Steli Efti):**
1. Write the script AFTER researching the persona, not before
2. Use bullet points, not paragraphs — keeps it natural
3. No reading allowed — internalize the structure, not the words
4. Record yourself and iterate on what sounds human
5. Test 25x out loud before deciding it works or doesn't

**Script Structure (not templates):**
- **The architecture:** Signal → Opener → Hook → Ask → Cadence
- **Each part has a job:** Opener proves research, Hook diagnoses a problem, Ask costs 15 seconds to answer
- **The scripts feel different per conversation** because the structure stays the same but the specific signal changes

### Tony Robbins Approach to Scripting

**Metaprograms (the patterns, not the words):**
Robbins teaches that effective communication is about understanding the other person's FILTERS, not memorizing lines.

**6 Key Metaprograms for Sales Scripts:**
1. **Toward vs. Away-From:** Do they move toward pleasure or away from pain? Speak their language.
2. **Internal vs. External Reference:** Do they decide based on their own judgment or others' opinions?
3. **Options vs. Procedures:** Do they want choices or step-by-step? Sell accordingly.
4. **Same vs. Difference:** Are they matchers or mismatchers? Matchers want familiarity; mismatchers want novelty.
5. **Self vs. Others:** Do they focus on their own experience or group harmony?
6. **Possibility vs. Necessity:** Are they driven by what could be or what must be done?

**The Flash Roll (90-second expert positioning):**
- A rapid-fire sequence of highly technical language that establishes you as THE expert
- No editorial, no emotion, no "I think" — just pure technical action sequence
- Delivered dispassionately, as if it's mundane and uninteresting to you
- Structure: Problem → Assessment → Solution → Results
- "A Flash Roll is a linguistic fireworks display of pure technical mastery over a complex subject"

**The 55/38/7 Rule:**
- 55% visual (body language)
- 38% vocal (tone and inflection)
- 7% verbal (actual words)
- Scripts need to account for how the message is DELIVERED, not just what is said

---

## 8. Reddit Community Insights

### r/sales, r/coldemail, r/leadgeneration (2025-2026)

**The 3-Line Email (most viral template on Reddit):**
```
Subject: [Topic/trigger]

Line 1: [What you do, plainly]
Line 2: [What's in it for them]
Line 3: [Ask]

[Signature]
```
Reportedly booked 560+ SaaS demos.

**The 7-Step Framework (302 upvotes):**
1. The Trigger (why you're reaching out)
2. The Implication (why this matters)
3. The Pain (what's holding them back)
4. Social Proof (show, don't tell)
5. The Solution (keep it short)
6. The Soft Ask (low friction)

**The Email-Anchor Cold Call (150 upvotes):**
Send a short email 30 minutes before calling. When you call, they have context. Combined effective contact rate: 8-12% vs 2-3% email-only.

**Key Reddit Data Points:**
- Emails under 75 words have highest reply rates
- 30 emails per inbox max per day (or deliverability dies)
- 3-email sequence outperforms 5 and 7 email sequences
- Personalization > Relevance: reference their specific situation, not just their company
- Don't pitch in connection requests

**Reddit DM Playbook (from r/sales):**
- Response rate on intent-matched signals: 8-18%
- Account warm-up: 4-6 weeks before any DM campaign
- Target thread commenters first (highest converting)
- Reference specific pain phrase verbatim from their post

**Channel Comparison (2026):**
- Cold email: 1-3% reply rate
- LinkedIn DMs: 8-15% with proper discipline
- Reddit DMs (intent-matched): 8-18%
- Reddit + cold call combo: 8-12% effective contact rate

---

## 9. GitHub Open Source Tools

### Lead Generation & Outreach Automation

| Tool | Stars | Language | What It Does |
|------|-------|----------|-------------|
| **OpenOutreach** (eracle/openoutreach) | 1,929 | Python | Self-hosted LinkedIn automation. AI finds and contacts prospects autonomously using Playwright + stealth plugins. Bayesian Active Learning to qualify leads. |
| **LeadPipeline** (AI-Invention/lead-pipeline) | New | Python | Open-source Apollo alternative. Scrape Google Maps → Google Sheets CRM → Personalized Email → Demo Showcase → Reply tracking. |
| **OpenSales** (siddartha19/OpenSales) | New | Python | Multi-agent outbound sales system. VP-agent plans, SDR-agent finds targets, AE-agent enriches + writes emails. Traceable pipeline. |
| **outreach-agent** (Abhipaddy8/outreach-agent) | New | Python | Autonomous cold email agent using Claude Code. Sources 50 leads from LinkedIn posts, funding announcements. Verifies emails. Writes/sends HTML emails. |
| **Prospector** (Ibrahim-3d/prospector) | 2 | Python | Scrapes job boards, funding news, freelance platforms for warm leads. Uses Scrapling. Deduplicates + enriches with AI. |
| **coldshot** (drPod/coldshot) | New | Python | Terminal-based CRM. AI discovers prospects, researches pain points, walks org chart to find right decision maker, drafts email, opens your editor. |
| **makerlens** (RRYanng/makerlens) | New | Python | AI cold outreach with 3-layer anti-hallucination. Finds SaaS founders, analyzes landing pages, generates hyper-personalized emails. |
| **US-Leads-Scraper-Pro** (grissomlin/US-Leads-Scraper-Pro) | New | Python | Google Maps scraper for US local businesses. Streamlit dashboard. Multi-lingual personalized emails. |

### Key Tool: Scrapling
**Repo:** D4Vinci/Scrapling (used by Prospector and others)
**What it is:** Python web scraping library. Used as the foundation layer for many lead gen scrapers.

---

## 10. 2026 Benchmarks & State of the Industry

### Cold Email Benchmarks
| Metric | Industry Average | Top Performers |
|--------|-----------------|----------------|
| Open rate | 1-3% (declining) | 6-8% |
| Reply rate (cold) | 0.5-2% | 4-8% |
| Reply rate (personalized) | 2-4% | 8-18% |
| Reply rate (signal-first) | 4-8% | 12-20% |
| Meetings booked rate | 0.5-2% | 2-5% |

### Key Trends
1. **AI-generated email saturation:** Buyers now receive 60-80 cold emails/week. The bar for "personalized" has moved — token replacement ("Hi {first_name}") no longer reads as personalization.
2. **Signal-first wins:** Sending based on buying signals (funding, hiring, tech stack changes, content published) produces 4-8x higher reply rates than volume-based approaches.
3. **Multi-channel is now table stakes:** Email-only caps at 1-3% reply rate. Adding LinkedIn boosts to 5-10%. Adding phone lifts to 8-12%.
4. **Deliverability is harder:** Google's spam updates hit hard. 30 emails/inbox/day max. Domain warming required. Spam complaint rate must stay below 3/1,000.
5. **Reddit is the new gold rush:** Intent-matched Reddit DMs produce the highest reply rates (8-18%) of any channel.
6. **AI assistants are transforming lead gen:** Claude Code workflows, multi-agent systems, and autonomous outreach pipelines are replacing SDR teams for early-stage startups.

---

*Research compiled June 2026 from web search, Reddit, GitHub, LinkedIn, YC Library, Medium, and 120+ expert articles. Sources include alexberman.com, close.com, outboundsquad.com, salesfolk.com, predictablerevenue.com, justinwelsh.me, richardvanderblom.com, and 15+ other expert platforms.*
