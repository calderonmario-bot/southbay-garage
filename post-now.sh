#!/bin/bash
# Post with 60-day token

curl -X POST "https://graph.facebook.com/v19.0/941105922412097/feed" \
  -H "Content-Type: application/json" \
  -d "{
    \"message\": \"\$799. Done today. No surprises.\n\nNo hourly rates. No hidden fees. No waiting around for a crew that shows up late. Just \$799 for a complete garage cleanout — from cluttered to clean.\n\nLocal South Bay crew. We know the neighborhoods, the dumping requirements, and the shortcuts that save you time.\n\nComment \\\"TODAY\\\" and we will lock in your spot. Limited weekly slots available.\n\n#FlatRatePricing #GarageCleanout #CarsonCA #SouthBay #SameDayService\",\n    \"access_token\": \"EAAUmug36fHUBRcqluVJB0zVTcIUZAhZCnqYyZCfCB4jaNeQpp0BZC8Ifag8ARFwESUWkNj7bYeBzfaexY3ZBbfytsQS1DTdfmZBoGFMd3jYbn8bS57iynlJ30PodhtkFjH8ZBJKjvIckP6OCK37ZBzr8RntTFOOtScl5tF69H1U8LcfBS7UCJCG3Smbv5MEZBYqh9ydfGWoVmUjMWnQZDZD\"
  }"
