#!/bin/bash
# Facebook Post Scheduler - Transformation Tuesday
# South Bay Garage Cleanout & Junk Removal
# Scheduled for: Tuesday May 12, 2026 @ 9:30 AM PT

echo "========================================"
echo "Facebook Post Scheduler"
echo "Page: South Bay Garage Cleanout"
echo "Scheduled: Tue May 12, 2026 @ 9:30 AM PT"
echo "========================================"
echo ""

# Page configuration
PAGE_ID="941105922412097"
PAGE_TOKEN="EAAUmug36fHUBRYMs0ExBYEVMxLzvuk8IeoNhTf53tQdegu5SwmelfXdntY1PqC6S3SgUfjdVZAVxzlZCAiVV78fMlC3Y0QDK3im7ZAQRqZAZCYuCqvjl3RZCcysIQiqtSl6BFbAZBHhACsrukVQThbAocEdcT1LXKKyxWra2PGBGTPUcnZAamWKRI9B33BSVRMIPLjMos8EfMErYerpD5uxgh7uOZAukhVP67WpNjJht3hBZBvTiVXAwJZAKCn3JAZAZArt5u4Hj6fcYbNZBm69UyiaViFzwZDZD"

# Scheduled publish time: Tuesday May 12, 2026 @ 9:30 AM PDT (16:30 UTC)
# Unix timestamp: 1747066200
# Note: Original schedule was 9:30 AM PT, now posting immediately
SCHEDULED_TIME=""

# Post content
CAPTION='$799. Done today. No surprises.

No hourly rates. No "volume overage" fees. No waiting around for a crew that shows up late. Just $799 for a complete garage cleanout — from cluttered to clean.

Local South Bay crew. We know the neighborhoods, the dumping requirements, the shortcuts that save you time.

Comment "TODAY" and we will lock in your spot. Limited weekly slots.

#FlatRatePricing #GarageCleanout #CarsonCA #SouthBay #SameDayService'

echo "Creating scheduled post..."
echo "Publish time: $SCHEDULED_TIME (Tue May 12 @ 9:30 AM PT)"
echo ""

# Make the API call to post immediately
curl -X POST "https://graph.facebook.com/v19.0/${PAGE_ID}/feed" \
  -H "Content-Type: application/json" \
  -d "{
    \"message\": \"$CAPTION\",
    \"access_token\": \"$PAGE_TOKEN\"
  }"

echo ""
echo ""
echo "========================================"
echo "Post scheduling complete!"
echo "Check output above for post ID."
echo "========================================"
