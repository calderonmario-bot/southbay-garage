#!/usr/bin/env python3
"""
Facebook Posting Tool for South Bay Garage Cleanout & Junk Removal
Posts text and/or images to Facebook Page using Graph API
"""

import sys
import json
import requests
import argparse
from pathlib import Path


def load_config(config_path):
    """Load Facebook configuration from JSON file."""
    with open(config_path, 'r') as f:
        config = json.load(f)
    # Merge pageToken -> accessToken for backward compatibility
    if 'pageToken' in config and 'accessToken' not in config:
        config['accessToken'] = config['pageToken']
    return config


def post_text_only(page_id, access_token, message):
    """Post a text-only update to Facebook Page."""
    url = f"https://graph.facebook.com/v22.0/{page_id}/feed"
    params = {
        'message': message,
        'access_token': access_token
    }
    response = requests.post(url, data=params)
    return response.json()


def post_single_image(page_id, access_token, message, image_path):
    """Post a single image with caption to Facebook Page."""
    url = f"https://graph.facebook.com/v22.0/{page_id}/photos"
    data = {
        'message': message,
        'access_token': access_token
    }
    with open(image_path, 'rb') as img:
        files = {'source': img}
        response = requests.post(url, data=data, files=files)
    return response.json()


def post_multiple_images(page_id, access_token, message, image_paths):
    """Post multiple images as a carousel/album to Facebook Page."""
    # First, upload all images and get their IDs
    photo_ids = []
    for image_path in image_paths:
        url = f"https://graph.facebook.com/v22.0/{page_id}/photos"
        data = {'access_token': access_token, 'published': 'false'}
        with open(image_path, 'rb') as img:
            files = {'source': img}
            response = requests.post(url, data=data, files=files)
            result = response.json()
            if 'id' in result:
                photo_ids.append(result['id'])
            else:
                print(f"Warning: Failed to upload {image_path}: {result}")
    
    if not photo_ids:
        print("Error: No images were successfully uploaded")
        return None
    
    # Create a post with attached photos
    url = f"https://graph.facebook.com/v22.0/{page_id}/feed"
    data = {
        'message': message,
        'access_token': access_token,
        'attached_media': json.dumps([{'media_fbid': pid} for pid in photo_ids])
    }
    response = requests.post(url, data=data)
    return response.json()


def main():
    parser = argparse.ArgumentParser(description='Post to Facebook Page')
    parser.add_argument('config', help='Path to config JSON file')
    parser.add_argument('caption', help='Post caption/message')
    parser.add_argument('images', nargs='*', help='Optional image paths to attach')
    args = parser.parse_args()
    
    # Load configuration
    config = load_config(args.config)
    page_id = config.get('pageId')
    access_token = config.get('accessToken') or config.get('pageToken')
    
    if not page_id or not access_token:
        print("Error: pageId and accessToken (or pageToken) required in config")
        sys.exit(1)
    
    caption = args.caption
    image_paths = args.images
    
    print(f"Posting to Facebook Page {page_id}...")
    print(f"Caption: {caption}")
    print(f"Images: {len(image_paths)}")
    
    try:
        if not image_paths:
            # Text-only post
            result = post_text_only(page_id, access_token, caption)
        elif len(image_paths) == 1:
            # Single image post
            result = post_single_image(page_id, access_token, caption, image_paths[0])
        else:
            # Multiple images
            result = post_multiple_images(page_id, access_token, caption, image_paths)
        
        if result and 'id' in result:
            print(f"✓ Successfully posted! Post ID: {result.get('post_id', result.get('id'))}")
            print(json.dumps(result, indent=2))
        else:
            print("✗ Post failed")
            print(json.dumps(result, indent=2))
            sys.exit(1)
            
    except Exception as e:
        print(f"✗ Error: {e}")
        sys.exit(1)


if __name__ == '__main__':
    main()
