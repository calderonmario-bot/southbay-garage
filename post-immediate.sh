#!/bin/bash
# Immediate Facebook Post - Using Latest Token

echo "Posting to Facebook..."

curl -X POST "https://graph.facebook.com/v19.0/941105922412097/feed" \
  -H "Content-Type: application/json" \
  -d "{
    \"message\": \"\$799. Done today. No surprises.\n\nNo hourly rates. No \\\"volume overage\\\" fees. No waiting around for a crew that shows up late. Just \$799 for a complete garage cleanout — from cluttered to clean.\n\nLocal South Bay crew. We know the neighborhoods, the dumping requirements, the shortcuts that save you time.\n\nComment \\\"TODAY\\\" and we will lock in your spot. Limited weekly slots.\n\n#FlatRatePricing #GarageCleanout #CarsonCA #SouthBay #SameDayService\",\n    \"access_token\": \"EAAUmug36fHUBRS98HH2Bb5M0L6ZCrZCTaD9mhVQrmnWCt73fxbQzssd7QMfLbhsTxNj8ZAmMdbhZA1p15tVv7FNC5PaD8qzRVMEXW2xjmILag7vJcScggluxRB5aDjLaWv4YS7lckLeSxpSBL9fVGu01u2S4TbbLkc0Gr3UUqStfZAhNF9apZBn5hU28YXb3RY7ytCoW4c9WZCLqWig6fHEYnOHWuP8ZCqbVhw82eOnFZCowQTYhQzWNeqbXA0AVRnvkZAQ8a26ZBU1RkwFdAF5Qsc6tAZDZD\"
  }"

echo ""
echo "Done."
