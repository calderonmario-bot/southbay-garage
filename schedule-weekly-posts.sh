#!/bin/bash
#
# Weekly Facebook Post Scheduler for South Bay Garage Cleanout
# Schedule this with cron to run weekly
#

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_FILE="$SCRIPT_DIR/facebook-config.json"
CONTENT_FILE="$SCRIPT_DIR/facebook-content-ideas.json"
PHOTO_DIR="$SCRIPT_DIR/facebook-photos"

# Ensure directories exist
mkdir -p "$PHOTO_DIR"
mkdir -p "$SCRIPT_DIR/logs"

# Log file with date
LOG_FILE="$SCRIPT_DIR/logs/facebook-posts-$(date +%Y%m%d).log"

# Function to log messages
log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

log_message "Starting Facebook post scheduler..."

# Check for required files
if [ ! -f "$CONFIG_FILE" ]; then
    log_message "ERROR: Config file not found at $CONFIG_FILE"
    exit 1
fi

if [ ! -f "$CONTENT_FILE" ]; then
    log_message "ERROR: Content file not found at $CONTENT_FILE"
    exit 1
fi

# Check for Python script
if [ ! -f "$SCRIPT_DIR/post_facebook.py" ]; then
    log_message "ERROR: Python script not found at $SCRIPT_DIR/post_facebook.py"
    exit 1
fi

# Get day of week (1-7, where 1 is Monday)
DAY_OF_WEEK=$(date +%u)

log_message "Today is day $DAY_OF_WEEK of the week"

# Use Python to extract today's content and post
python3 << EOPYTHON
import json
import sys
import subprocess
import random
import os

def get_todays_content():
    with open('$CONTENT_FILE', 'r') as f:
        posts = json.load(f)
    
    day = $DAY_OF_WEEK
    for post in posts:
        if post.get('day') == day:
            return post
    return None

def find_images_for_post():
    """Find relevant images in the photos directory."""
    photo_dir = '$PHOTO_DIR'
    if not os.path.exists(photo_dir):
        return []
    
    # Look for images with today's date pattern or generic names
    extensions = ['.jpg', '.jpeg', '.png', '.gif']
    images = []
    
    for file in os.listdir(photo_dir):
        if any(file.lower().endswith(ext) for ext in extensions):
            images.append(os.path.join(photo_dir, file))
    
    # Limit to 4 images max per post
    return images[:4]

def main():
    post = get_todays_content()
    if not post:
        print(f"No post scheduled for day {$DAY_OF_WEEK}")
        sys.exit(0)
    
    caption = post.get('caption', '')
    images = find_images_for_post()
    
    print(f"Posting: {post.get('category', 'Unknown')}")
    print(f"Caption: {caption[:80]}...")
    print(f"Images found: {len(images)}")
    
    # Build command
    cmd = ['python3', '$SCRIPT_DIR/post_facebook.py', '$CONFIG_FILE', caption]
    cmd.extend(images)
    
    result = subprocess.run(cmd, capture_output=True, text=True)
    print(result.stdout)
    if result.stderr:
        print("STDERR:", result.stderr, file=sys.stderr)
    
    sys.exit(result.returncode)

if __name__ == '__main__':
    main()
EOPYTHON

EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    log_message "✓ Facebook post completed successfully"
else
    log_message "✗ Facebook post failed with exit code $EXIT_CODE"
fi

exit $EXIT_CODE
