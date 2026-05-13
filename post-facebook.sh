#!/bin/bash
#
# Facebook Post Script for South Bay Garage Cleanout & Junk Removal
# Usage: ./post-facebook.sh "Your caption text" [image_path1] [image_path2] ...
#

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_FILE="$SCRIPT_DIR/facebook-config.json"

# Check for config file
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Config file not found at $CONFIG_FILE"
    exit 1
fi

# Parse command line arguments
CAPTION="$1"
shift
IMAGE_PATHS=("$@")

if [ -z "$CAPTION" ]; then
    echo "Usage: $0 \"Your caption text\" [image_path1] [image_path2] ..."
    echo "Example: $0 \"Check out our latest project!\" ./photo1.jpg ./photo2.jpg"
    exit 1
fi

# Run Python script to post to Facebook
python3 "$SCRIPT_DIR/post_facebook.py" "$CONFIG_FILE" "$CAPTION" "${IMAGE_PATHS[@]}"
