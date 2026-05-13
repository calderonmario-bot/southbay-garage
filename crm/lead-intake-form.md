# Lead Intake Form — South Bay Garage Cleanout

**Purpose:** Capture and qualify every incoming lead consistently
**Updated:** 2026-05-11

---

## Core Contact Information

| Field | Required | Notes |
|-------|----------|-------|
| **Name** | ✅ Yes | Full preferred name |
| **Phone** | ✅ Yes | Primary contact method |
| **Email** | ⚠️ Preferred | For follow-up sequences |
| **Best time to call** | ⚠️ Preferred | Morning / Afternoon / Evening |

---

## Service Qualification

| Field | Required | Options / Notes |
|-------|----------|-----------------|
| **City / Zip** | ✅ Yes | Verify against service area list |
| **Address** | ⚠️ At booking | Full street address |
| **Garage size** | ⚠️ Preferred | • Small (1-car) / • Medium (2-car) / • Large (3+ car) / • Unknown |
| **Urgency** | ⚠️ Preferred | • This week (🔥 HOT) / • This month / • Flexible / • Just researching |
| **What's in the garage?** | ⚠️ Preferred | Brief description of contents |
| **Photos received?** | ✅ Track | Y / N — if Y, attach to record |

---

## Source Tracking

| Field | Required | Options |
|-------|----------|---------|
| **How they found us** | ✅ Yes | • Facebook / • Google / • Referral / • Yelp / • Flyer / • Other |
| **Referrer name** | If applicable | Who referred them? |
| **Facebook post ID** | If FB lead | Track which post generated the lead |
| **Date/time first contact** | ✅ Auto | Timestamp of first inbound message |

---

## Pipeline Status

```
┌─────────┐    ┌───────────┐    ┌─────────┐    ┌───────────┐    ┌───────────┐
│   NEW   │───▶│ QUALIFIED │───▶│ QUOTED  │───▶│ SCHEDULED │───▶│ COMPLETED │
└─────────┘    └───────────┘    └─────────┘    └───────────┘    └───────────┘
     │                               │
     ▼                               ▼
┌─────────┐                   ┌───────────┐
│ INVALID │                   │  NO BOOK  │──▶ Archive after 14 days
│(out of  │                   │(declined /│
│ area)   │                   │ no reply) │
└─────────┘                   └───────────┘
```

### Status Definitions

| Status | Meaning | Next Action |
|--------|---------|-------------|
| **NEW** | Just received, unprocessed | Qualify within 1 hour |
| **QUALIFIED** | In service area, has need | Send quote within 2 hours |
| **QUOTED** | $799 flat rate quote sent | Schedule follow-ups |
| **SCHEDULED** | Appointment date confirmed | Send confirmation, day-before reminder |
| **COMPLETED** | Job finished | Request review, ask for referrals |
| **NO BOOK** | Declined or ghosted | Archive after 14 days |
| **INVALID** | Out of service area | Politely decline, note for future expansion |

---

## Service Area Verification

**Primary Coverage (no travel fee):**
- Carson ✅
- Torrance ✅
- Long Beach ✅
- Wilmington ✅
- Harbor City ✅
- San Pedro ✅
- Lomita ✅
- Gardena ✅
- Lawndale ✅
- Hawthorne ✅

**Extended Coverage (case-by-case):**
- All of LA County — verify drive time

---

## Checklist for New Leads

- [ ] Contact info complete
- [ ] Service area verified
- [ ] Urgency assessed (🔥 flag if "this week")
- [ ] Source logged for ROI tracking
- [ ] Quote sent within 2 hours
- [ ] Follow-up sequence triggered
