#!/bin/sh

BASE="$(dirname "$0")/.."
cd "$BASE"

# Get the user input:

# Export the environment variables:
export ttiUsername="admin"
export ttiPassword="password"
export TTI_PLAYCOOKIE="$ttiUsername"
export TTI_GAMESERVER="127.0.0.1"

echo "==============================="
echo "Starting Toontown Online..."
echo "Username: $ttiUsername"
echo "Gameserver: $TTI_GAMESERVER"
echo "==============================="

"../bin/python" -m toontown.toonbase.ClientStart
