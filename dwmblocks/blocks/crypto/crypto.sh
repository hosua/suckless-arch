#!/bin/bash

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# Pull coin data via get-map.sh (sources .env internally)
response=$(cd "$SCRIPT_DIR" && bash get-map.sh 2>/dev/null)

if [ -z "$response" ]; then
    printf "XMR: ---"
    exit 0
fi

# Extract XMR rate and 24h delta
rate=$(printf '%s' "$response" | jq -r '.[] | select(.code == "XMR") | .rate')
day_delta=$(printf '%s' "$response" | jq -r '.[] | select(.code == "XMR") | .delta.day')

if [ -z "$rate" ] || [ "$rate" = "null" ]; then
    printf "XMR: ---"
    exit 0
fi

# Format price (2 decimal places)
price=$(printf "%.2f" "$rate")

# delta is a multiplier: 1.0093 = +0.93%, 0.97 = -3.00%
pct_change=$(awk -v d="$day_delta" 'BEGIN { printf "%+.2f%%", (d - 1) * 100 }')

printf "XMR \$%s %s" "$price" "$pct_change"
