# Execute Tuesday 5/12 Facebook Post

## Status: READY FOR EXECUTION

This post has been prepared and is ready to be scheduled via the Facebook Graph API.

---

## Post Details

| Field | Value |
|-------|-------|
| **Page** | South Bay Garage Cleanout & Junk Removal |
| **Page ID** | 941105922412097 |
| **Schedule** | Tuesday, May 12, 2026 @ 9:30 AM PT |
| **Unix Timestamp** | 1747066200 |
| **Post Type** | Text post (value proposition) |

---

## Content

```
$799. Done today. No surprises.

No hourly rates. No "volume overage" fees. No waiting around for a crew that shows up late. Just $799 for a complete garage cleanout — from cluttered to clean.

Local South Bay crew. We know the neighborhoods, the dumping requirements, the shortcuts that save you time.

Comment "TODAY" and we'll lock in your spot. Limited weekly slots.

#FlatRatePricing #GarageCleanout #CarsonCA #SouthBay #SameDayService
```

---

## Execution Options

### Option 1: Run the prepared script
```bash
cd ~/.openclaw/workspace && bash southbay-garage/schedule/post-tue-may-12-scheduled.sh
```

### Option 2: Direct curl command
```bash
curl -X POST "https://graph.facebook.com/v19.0/941105922412097/feed" \
  -H "Content-Type: application/json" \
  -d '{
    "message": "$799. Done today. No surprises.\n\nNo hourly rates. No volume overage fees. No waiting around for a crew that shows up late. Just $799 for a complete garage cleanout.\n\nComment TODAY and we will lock in your spot. Limited weekly slots.\n\n#FlatRatePricing #GarageCleanout #CarsonCA #SouthBay #SameDayService",
    "published": false,
    "scheduled_publish_time": 1747066200,
    "access_token": EAAUmug36fHUBRevlsdHjr4BbUKAe62lmDKYOMfzO9cN11czXqDsRhHdM77d45DOp5ukeFbjsMQTudrpgQWv7dLUdp8KWZAEwWEEJIgu7fDQTW9cZCj2cqg1ECBmv1IZCKlhmjbv4WygAi7dRp1RZBE8ZAibQEvmTM8XfB64zYuB1WUOgxB4vzdLzIE2kMBOz9TMXaQfUGZAJCOm37b5q1NMPgbhaZCmXGb1nOxkPvPRtg2eRZBGctDJc
  }'
```

---

## Expected Response

On success, Facebook returns:
```json
{
  "id": "941105922412097_xxxxxxxxx"
}
```

This ID is the scheduled post ID. The post will automatically publish at the scheduled time.

---

## Files Updated

- ✅ `rex-post-log.md` - Updated with scheduled status
- ✅ `rex-calendar.md` - Marked Tuesday as scheduled
- ✅ `post-tue-may-12-scheduled.sh` - Executable script created
- ✅ `EXECUTE-TUE-POST.md` - This execution guide

---

## Next Steps After Execution

1. Copy the returned post ID from the API response
2. Add it to `rex-post-log.md` under "Posted Content" section
3. Monitor the post at 9:30 AM PT on 5/12 to ensure it published

---

*Prepared by: Cora Subagent*  
*Date: 2026-05-11*
