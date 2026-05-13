# Kai — Lead Response Templates

**Role:** Lead Response Specialist for South Bay Garage Cleanout & Junk Removal  
**Last Updated:** 2026-05-11  
**Status:** ⚠️ Facebook token expired — needs refresh to monitor live comments/DMs

---

## Business Quick Reference
- **Flat Rate:** $799 any garage size (DO NOT post publicly)
- **Phone:** +1 424-275-8603
- **Page ID:** 941105922412097
- **Service Area:** All of South Bay Los Angeles

---

## Response Templates by Scenario

### 1. "How much do you charge?" → Push to DM

**Template:**
```
Hey [Name]! Thanks for reaching out — I'd love to give you accurate pricing for your specific situation. 

Mind shooting us a DM with your zip code? We'll get you a quick, no-pressure quote. 📩
```

**Why this works:** Acknowledges the question, builds trust by offering personalized quote, moves conversation private where price can be discussed.

---

### 2. "Do you service [city]?" → Confirm + CTA

**Template:**
```
Yes! We cover all of South Bay including [City] — no problem at all. 

Want to grab a spot on our calendar? DM us your address and we'll lock you in! 🗓️
```

**Why this works:** Confirms service area immediately, reduces friction with clear next step.

---

### 3. "Can you do this weekend?" → Qualify + Book

**Template:**
```
Weekend spots fill up fast, but we might have something! 

DM us your address and what needs clearing out — we'll check availability and get you booked ASAP. ⚡
```

**Why this works:** Creates urgency without overpromising, captures lead details while interest is hot.

**🔥 HOT LEAD FLAG:** Anyone asking about weekend availability = high intent. Escalate to Cora immediately with their name and what they asked.

---

### 4. General Interest / "I need help with my garage"

**Template:**
```
We're here for you! 🙌 

Whether it's a full garage cleanout or just clearing some space, we handle it all. DM us a few photos of what you're working with and we'll get you sorted.
```

**Why this works:** Low-pressure opener, invites engagement with low-effort action (photo share).

---

### 5. Positive Comment / "Looks great!"

**Template:**
```
Thanks [Name]! 🙏 We've cleared out garages all over the South Bay — next one could be yours! 

Give us a shout if you ever need us.
```

**Why this works:** Acknowledges, builds social proof, plants seed for future need.

---

### 6. Negative Comment / Complaint

**Template:**
```
Hey [Name], sorry to hear that — we want to make this right. 

Can you DM us your contact info? Our team will reach out directly to fix this. 🤝
```

**Why this works:** Public acknowledgment shows responsiveness, moves damage control to private channel.

---

## Escalation Rules

| Scenario | Action |
|----------|--------|
| Asks about weekend availability | 🔥 HOT LEAD → Escalate to Cora immediately |
| Asks for pricing publicly | Reply with Template #1, push to DM |
| Mentions competitor | Flag to Cora for competitive intel |
| Wants content/info | Route to **Jax** (Content) |
| Questions about service areas/pricing strategy | Check with **Mira** (Researcher) |
| Complaint or service issue | Escalate to Cora with screenshot |

---

## Live Monitoring Status

**Issue Identified:** Facebook Page Access Token expired on 2026-05-11 at 15:00:00 PDT  
**Impact:** Cannot fetch live comments or DMs via API  
**Action Required:** Refresh token or re-authorize Facebook app

**Token Refresh Steps:**
1. Go to Facebook Developers → southbay-garage app
2. Navigate to Page Access Tokens
3. Generate new long-lived token
4. Update `/southbay-garage/facebook-config.json`

---

## Success Metrics
- Response rate (target: < 1 hour for all comments)
- DM conversion rate (% of commenters who DM)
- Appointments booked from Facebook leads
- Hot lead escalation speed
