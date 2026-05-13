# Facebook Posting Workflow for South Bay Garage Cleanout

## Overview
This folder contains everything needed to automate and manage Facebook posts for the South Bay Garage Cleanout & Junk Removal page.

---

## Files Created

### 1. post-facebook.sh
**Purpose:** Shell wrapper script for posting to Facebook  
**Usage:**
```bash
cd /home/macaco_80/.openclaw/workspace/southbay-garage
./post-facebook.sh "Your caption text here" [optional-image1.jpg] [optional-image2.jpg]
```

**Examples:**
```bash
# Text-only post
./post-facebook.sh "Happy Monday! Ready to tackle your garage cleanout this week?"

# Single image
./post-facebook.sh "Check out this transformation!" ./photos/garage-after.jpg

# Multiple images (up to 4)
./post-facebook.sh "Before, during, and after!" ./before.jpg ./during.jpg ./after.jpg
```

### 2. post_facebook.py
**Purpose:** Python script that handles the actual Facebook Graph API calls  
**Called by:** post-facebook.sh (you don't run this directly)  
**Features:**
- Posts text-only updates
- Uploads single images with captions
- Posts multiple images as carousels
- Reads credentials from facebook-config.json
- Returns post ID on success

### 3. facebook-content-ideas.json
**Purpose:** 7 days of pre-written post content with captions  
**Structure:**
- Day 1: Before/After Transformation
- Day 2: Customer Testimonial
- Day 3: Educational/Tips
- Day 4: Behind the Scenes
- Day 5: Service Spotlight
- Day 6: Social Proof/Urgency
- Day 7: Community Connection

### 4. schedule-weekly-posts.sh
**Purpose:** Automated weekly scheduler (for cron)  
**Usage:** Set up as a cron job to run daily

## Setup Instructions

### Step 1: Make Scripts Executable
```bash
cd /home/macaco_80/.openclaw/workspace/southbay-garage
chmod +x post-facebook.sh
chmod +x schedule-weekly-posts.sh
```

### Step 2: Test Manual Post
Create a test post:
```bash
./post-facebook.sh "Testing our new posting system! 🚛💨 #SouthBay #JunkRemoval"
```

### Step 3: (Optional) Set Up Automated Weekly Posts

