# Facebook Skill Configuration — South Bay Garage Cleanout

## Current Status
- Skill Installed: ✅ facebook 1.0.1
- Page ID: 941105922412097
- App ID: 1449955423845493
- Token: Present but **missing pages_manage_posts permission**

## The Fix: Business Manager System User (Permanent Token)

Since you have Facebook Business Manager, here's how to get a **never-expiring token**:

### Step 1: Create System User in Business Manager
1. Go to https://business.facebook.com/settings/system-users
2. Click **Add System User**
3. Name: `OpenClaw-Garage-Cleanout`
4. Role: **Admin**

### Step 2: Generate Token
1. Click the new System User → **Generate Token**
2. Select your app: `South Bay Garage Cleanout` (App ID: 1449955423845493)
3. Permissions to enable:
   - ✅ `pages_manage_posts`
   - ✅ `pages_read_engagement`
   - ✅ `pages_manage_engagement`
4. Click **Generate**

### Step 3: Get Page Access Token
```bash
curl "https://graph.facebook.com/v19.0/PAGE_ID?fields=access_token&access_token=SYSTEM_USER_TOKEN"
```
Where PAGE_ID = 941105922412097

### Step 4: Update Config
Replace `southbay-garage/facebook-config.json` with the new Page token.

## Website for App Review
**Live URL:** https://southbaycleanout.netlify.app
**Deployed:** May 12, 2026
**Use this for Facebook App Review business verification

## Alternative: Extend Current Token (Temporary Fix)

If you don't want to set up System User right now:

1. Go to https://developers.facebook.com/tools/debug/accesstoken/
2. Paste your current short-lived token
3. Click **Debug**
4. At bottom, click **Extend Access Token**
5. This gives you ~60 days instead of 1 hour

## Quick Test

After updating config, test with:
```bash
curl -X POST "https://graph.facebook.com/v19.0/941105922412097/feed" \
  -H "Content-Type: application/json" \
  -d '{"message":"Test post","access_token":"YOUR_NEW_TOKEN"}'
```

## When This Is Done

Post to your page will work with:
- No more token expiration
- No manual regeneration
- OpenClaw can post automatically via skill or direct API

---

*Config created: 2026-05-12*
*Skill: facebook 1.0.1 (ClawHub)*
