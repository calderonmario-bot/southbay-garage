#!/bin/bash
# Quick email sender for Cora
# Usage: ./send-email.sh "to@email.com" "Subject" "Body text"

API_KEY="am_us_inbox_f23128b578498ef3babd729e4becd555eea8196471eef13b49f1c14a1e5fe542"
INBOX="cora_oc@agentmail.to"

curl -s -X POST \
  "https://api.agentmail.to/v0/inboxes/${INBOX}/messages/send" \
  -H "Authorization: Bearer ${API_KEY}" \
  -H "Content-Type: application/json" \
  -d "{\"to\": [\"$1\"], \"subject\": \"$2\", \"text\": \"$3\"}"
