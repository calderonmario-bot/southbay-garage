# South Bay Garage Cleanout — Dashboard Build Plan

**One-stop reference for tool choice, setup, and visual design**

---

## Executive Summary

For your Garage Cleanout operation, **Notion** is the recommended starting point. It's free, visual, and handles lead tracking + content calendar in one place. When you're ready for deeper analytics, add **Google Sheets + Looker Studio**.

| Tool | Cost | Best For | When to Use |
|------|------|----------|-------------|
| **Notion** | Free | Lead pipeline, content calendar | Start here (Month 1-2) |
| **Google Sheets** | Free | Number crunching, charts | Add when you want analytics (Month 3+) |
| **Airtable** | $20/mo | Automation, advanced workflows | Upgrade when volume justifies it (20+ leads/month) |

---

## Dashboard Views

### View 1: Quick Stats Panel

**Purpose:** At-a-glance pulse check. Know your pipeline value and urgency at a glance.

**Desktop Wireframe:**

```
╔═══════════════════════════════════════════════════════════════════════════════╗
║  🎯 Lead Pipeline                    South Bay Garage Cleanout      [⚙️][👤] ║
╠═══════════════════════════════════════════════════════════════════════════════╣
║                                                                               ║
║  ┌────────────┐  ┌────────────┐  ┌────────────┐  ┌────────────┐              ║
║  │   🔴 HOT   │  │  🟡 WARM   │  │  💰 PIPE   │  │  ✅ DONE   │              ║
║  │   2 leads  │  │   3 leads  │  │  $3,850    │  │  $2,400    │              ║
║  │  Call now  │  │ Follow up  │  │  8 total   │  │  This mo   │              ║
║  └────────────┘  └────────────┘  └────────────┘  └────────────┘              ║
╚═══════════════════════════════════════════════════════════════════════════════╝
```

**Mobile View:**

```
╔═══════════════════════════════╗
║  🎯 Lead Pipeline      [⚙️]   ║
║  South Bay Garage Cleanout    ║
╠═══════════════════════════════╣
║                               ║
║  ┌─────────┐ ┌─────────┐      ║
║  │ 🔴 HOT  │ │ 🟡 WARM │      ║
║  │   2     │ │   3     │      ║
║  │ Due now │ │ Due wk  │      ║
║  └─────────┘ └─────────┘      ║
║  ┌─────────┐ ┌─────────┐      ║
║  │ 💰 PIPE │ │ ✅ DONE │      ║
║  │ $3,850  │ │ $2,400  │      ║
║  │ 8 leads │ │ This mo │      ║
║  └─────────┘ └─────────┘      ║
╚═══════════════════════════════╝
```

**Key Metrics:**
- **Hot Leads (🔴):** Active inquiries requiring same-day response
- **Warm Leads (🟡):** Quoted or contacted, awaiting reply
- **Pipeline Value:** Total quoted value of all open leads
- **Done Revenue:** Closed/won revenue this month

---

### View 2: Lead Pipeline (Kanban)

**Purpose:** Track every lead from first contact to close.

**Columns:**
1. **🔵 New** — Fresh inquiries (FB comment, DM, phone call, email)
2. **🟡 Quoted** — Quote sent, awaiting response
3. **🟢 Scheduled** — Job booked, ready to execute
4. **✅ Completed / ❌ Lost** — Done deals (won or lost)

**Lead Card Format:**

```
┌─────────────────────────┐
│ ⚡ Sarah M.    🔴 HOT   │  ← Name + Urgency
│ 💬 FB Messenger         │  ← Source
│ 🏠 Carson  |  Garage    │  ← Location + Service
│ 📞 310-555-0142         │  ← Phone
│ ⏰ 2 hours ago          │  ← Time since contact
│ [📞 Call] [💬 Message]  │  ← Quick actions
└─────────────────────────┘
```

**Desktop Full View:**

```
╔══════════════════════════════════════════════════════════════════════════════════╗
║ Pipeline Columns:  🔵 NEW (2)  |  🟡 QUOTED (3)  |  🟢 SCHEDULED (2)  |  ✅ DONE ║
║                                                                                  ║
║  Column 1: NEW              Column 2: QUOTED           Column 3: SCHEDULED      ║
║  ╔═════════════╗            ╔═════════════╗            ╔═════════════╗          ║
║  ║ ⚡ Sarah M.  ║            ║ 📋 Mike T.  ║            ║ 📅 Lisa K.  ║          ║
║  ║ 🔴 HOT LEAD  ║            ║ 🟡 WARM     ║            ║ 🟢 Ready    ║          ║
║  ║ Carson       ║            ║ Torrance    ║            ║ Long Beach  ║          ║
║  ║ 📞 310-555   ║            ║ 💰 $750     ║            ║ 💰 $400 ✅  ║          ║
║  ║ 🔥 CALL NOW  ║            ║ ⏰ FU 5/13  ║            ║ 📅 May 15   ║          ║
║  ╚═════════════╝            ╚═════════════╝            ╚═════════════╝          ║
╚══════════════════════════════════════════════════════════════════════════════════╝
```

**Lead Detail Panel** (when a lead is selected):

```
╔════════════════════════════════════════════════════════════════════════════╗
║ LEAD DETAIL PANEL (Selected: Sarah M.)                                     ║
╠════════════════════════════════════════════════════════════════════════════╣
║ [Customer Info] [Messages] [Quote] [Documents] [Notes]                    ║
║ ───────────────────────────────────────────────────────────────────────── ║
║ Name: Sarah Martinez               Phone: (310) 555-0142                  ║
║ Source: FB Messenger (May 11 2:04 PM)  Location: Carson, CA               ║
║ Service: Garage cleanout + donation pickup                                 ║
║ Notes: "2-car garage, filled with boxes from move, need it cleared        ║
║        before weekend"                                                     ║
║ ───────────────────────────────────────────────────────────────────────── ║
║ ACTIONS: [📞 Call Now] [💬 Send Quote] [📅 Schedule] [✅ Mark Won]         ║
╚════════════════════════════════════════════════════════════════════════════╝
```

---

### View 3: Performance Overview

**Purpose:** Know what's working. Track revenue, content performance, and lead flow over time.

**Desktop Wireframe:**

```
╔══════════════════════════════════════════════════════════════════════════════════╗
║  📊 PERFORMANCE OVERVIEW       South Bay Garage Cleanout               [⚙️][👤] ║
╠══════════════════════════════════════════════════════════════════════════════════╣
║                                                                                  ║
║  ╔═══════════════════════╗  ╔═══════════════════════╗  ╔═══════════════════════╗ ║
║  ║    💰 THIS MONTH      ║  ║   🎯 LEAD CONVERSION  ║  ║   ⭐ CUSTOMER SAT     ║ ║
║  ║      REVENUE          ║  ║        RATE           ║  ║       RATING          ║ ║
║  ║      $2,850           ║  ║        57%            ║  ║        4.8★           ║ ║
║  ║  ▲ $950 vs last mo    ║  ║  8 leads → 4 won      ║  ║  4 reviews            ║ ║
║  ╚═══════════════════════╝  ╚═══════════════════════╝  ╚═══════════════════════╝ ║
║                                                                                  ║
║  ╔═══════════════════════╗  ╔═══════════════════════╗  ╔═══════════════════════╗ ║
║  ║    📱 TOTAL REACH     ║  ║   💬 ENGAGEMENT       ║  ║   🏆 TOP PERFORMER    ║ ║
║  ║      14.7K views      ║  ║        6.2%           ║  ║   🎬 Garage Reel      ║ ║
║  ║  ▲ 3.2K (28%) ↑       ║  ║  912 engagements      ║  ║   2.3K views          ║ ║
║  ╚═══════════════════════╝  ╚═══════════════════════╝  ╚═══════════════════════╝ ║
║                                                                                  ║
║  ┌───────────────────────────────────────────────────────────────────────────┐   ║
║  │ 📈 REVENUE vs LEADS CHART                                                  │   ║
║  │  (Bar chart showing won revenue and new leads by week)                     │   ║
║  └───────────────────────────────────────────────────────────────────────────┘   ║
╚══════════════════════════════════════════════════════════════════════════════════╝
```

**Data Sources:**
- Revenue: Manual entry when jobs close
- Lead conversion: Calculated from pipeline data
- Reach/engagement: Export from Meta Business Suite weekly
- Top performer: Your highest-engagement post

---

## Notion Setup Guide (Recommended Starting Point)

### Step 1: Create Your Workspace
1. Go to [notion.so](https://notion.so) and sign up (free)
2. Create a new page called "South Bay Garage Cleanout"
3. Add a database: `/database` → "Lead Pipeline"

### Step 2: Lead Pipeline Database

**Properties to add:**

| Property | Type | Options/Notes |
|----------|------|---------------|
| Name | Title | Customer name |
| Status | Select | 🔵 New, 🟡 Quoted, 🟢 Scheduled, ✅ Completed, ❌ Lost |
| Source | Select | FB DM, FB Comment, Phone, Email, Referral |
| Location | Select | Carson, Torrance, Long Beach, etc. |
| Phone | Text | Contact number |
| Email | Text | Contact email |
| Service Type | Multi-select | Garage, Junk Removal, Shed, etc. |
| Quote Amount | Number | Dollar value |
| Date Received | Date | When lead came in |
| Follow-up Date | Date | Next action due |
| Notes | Text | Details, customer messages |

### Step 3: Create Views

**Kanban View (Pipeline):**
- Group by: Status
- Sort by: Date Received (newest first)
- Card preview: Name, Location, Phone, Quote

**Table View (All Data):**
- Show all properties
- Filter by: Active leads (not Completed or Lost)
- Sort by: Follow-up Date (oldest first)

**Calendar View (Scheduling):**
- Date property: Follow-up Date
- See upcoming tasks at a glance

### Step 4: Content Calendar (Separate Database)

Create a second database for tracking posts:

| Property | Type | Options |
|----------|------|---------|
| Content | Title | Post description |
| Platform | Multi-select | Facebook, Instagram |
| Type | Select | Photo, Reel, Story |
| Status | Select | Idea, In Progress, Scheduled, Posted |
| Publish Date | Date | When it goes live |
| Post URL | URL | Link after posting |
| Reach | Number | Meta insights |
| Engagements | Number | Meta insights |

---

## Google Sheets Setup (For Analytics-Heavy Users)

If you prefer spreadsheets, here's the structure:

**Sheet 1: Lead Tracker**
```
| Date | Source | Name | Phone | Service | Quote | Status | Close Date | Revenue |
```

**Sheet 2: Post Performance**
```
| Date | Post | Platform | Reach | Engagements | Comments | Shares |
```

**Sheet 3: Dashboard (Formulas)**
```
Total Pipeline: =SUMIF(Status:Status,"<>Completed",Quote:Quote)
Hot Leads: =COUNTIF(Status:Status,"New")
Conversion Rate: =COUNTIF(Status:Status,"Completed")/COUNTA(Status:Status)
```

**Connect to Looker Studio:**
1. Go to [lookerstudio.google.com](https://lookerstudio.google.com)
2. Create new report → Connect to Google Sheets
3. Build charts from your data
4. Shareable link for advisors/partners

---

## Mobile Considerations

Both Notion and Google Sheets have mobile apps. For field use:

- **Notion:** Better mobile experience, kanban cards are swipeable
- **Google Sheets:** Good for quick data entry, but charts are desktop-optimized

**Recommendation:** Use Notion mobile for checking leads on the go, Google Sheets for monthly analytics deep-dives.

---

## Automation Possibilities

### Phase 1: Manual (Now)
- Log leads by hand when they come in
- Update status as you progress
- Export Meta data weekly

### Phase 2: Semi-Automated (Future)
- Zapier connection: New FB message → Create Notion entry
- Airtable automations: Send email when lead status = "Quoted" for 3+ days
- Meta Business Suite: Schedule posts, export insights

### Phase 3: Full System (When Volume Justifies)
- Paid Airtable for advanced automations
- Custom integrations with your phone/FB
- Real-time syncing between all tools

---

## Quick Reference: Lead Status Definitions

| Status | Definition | Action Required |
|--------|------------|-----------------|
| 🔵 **New** | First contact within 24 hours | Respond within 2 hours |
| 🟡 **Quoted** | Quote sent, awaiting reply | Follow up in 2-3 days |
| 🟢 **Scheduled** | Job booked, deposit paid | Confirm day before |
| ✅ **Completed** | Job done, payment received | Request review |
| ❌ **Lost** | No response or declined | Mark reason, move on |

---

## Next Steps

1. **Choose your tool** (recommendation: Notion)
2. **Set up the database** using the properties above
3. **Create 3 test leads** to see the pipeline in action
4. **Log your first real lead** when it comes in
5. **Review weekly** — update statuses, check conversion rates

---

**Questions?** The dashboard is only useful if you use it. Start simple, add complexity when you need it.
