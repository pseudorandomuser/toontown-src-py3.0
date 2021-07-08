#!/bin/sh

BASE="$(dirname "$0")/../.."
cd "$BASE"

# Define some constants for our AI server:
MAX_CHANNELS=999999
STATESERVER=4002
ASTRON_IP="127.0.0.1:7100"
EVENTLOGGER_IP="127.0.0.1:7198"

# Get the user input:
DISTRICT_NAME="Marina Bay"
BASE_CHANNEL=401000000

echo "==============================="
echo "Starting Toontown Infinite AI server..."
echo "District name: $DISTRICT_NAME"
echo "Base channel: $BASE_CHANNEL"
echo "Max channels: $MAX_CHANNELS"
echo "State Server: $STATESERVER"
echo "Astron IP: $ASTRON_IP"
echo "Event Logger IP: $EVENTLOGGER_IP"
echo "==============================="

"../bin/python" -m toontown.ai.ServiceStart --base-channel $BASE_CHANNEL \
                     --max-channels $MAX_CHANNELS --stateserver $STATESERVER \
                     --astron-ip $ASTRON_IP --eventlogger-ip $EVENTLOGGER_IP \
                     --district-name "$DISTRICT_NAME"
