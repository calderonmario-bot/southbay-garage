#!/bin/bash
# South Bay Garage Cleanout - Automated Facebook Post with Before/After Images
# Usage: ./post-with-images.sh "Your caption here"

CONFIG_FILE="/home/macaco_80/.openclaw/workspace/southbay-garage/facebook-config.json"
PAGE_ID="941105922412097"
ACCESS_TOKEN=$(grep -o '"pageToken": "[^"]*"' "$CONFIG_FILE" | cut -d'"' -f4)

# Generate AFTER image (clean garage) - do this FIRST
echo "Generating AFTER image (clean garage)..."
# This will be done via image_generate tool

# Generate BEFORE image (same garage, cluttered) - use AFTER as reference
echo "Generating BEFORE image (cluttered version)..."
# This will use the AFTER image as reference

# For now, manual image upload phase:
# Facebook requires images to be uploaded separately or hosted at URLs
# Option A: Upload to a hosting service
# Option B: Use Facebook's attachment upload endpoint

echo "Posting to Facebook..."
echo "Caption: $1"
