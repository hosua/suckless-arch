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

# Color codes: \x0b = SchemeNorm (white), \x0e = SchemeGreen, \x0f = SchemeRed
# These map to colors[0..4] in dwm's config.h via DELIMITERENDCHAR+1+index
NORM=$'\x0b'
GREEN=$'\x0e'
RED=$'\x0f'

# Pick color based on sign of pct_change
color=$(awk -v d="$day_delta" "BEGIN { if (d > 1) print \"$GREEN\"; else if (d < 1) print \"$RED\"; else print \"$NORM\" }")

printf "XMR \$%s %s%s%s" "$price" "$color" "$pct_change" "$NORM"
