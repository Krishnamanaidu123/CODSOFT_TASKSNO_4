#!/bin/bash
# NIKO Quick Launcher – auto‑detects interface and subnet

INTERFACE=$(ip route | grep default | awk '{print $5}' | head -1)
[ -z "$INTERFACE" ] && INTERFACE="wlan0"

SUBNET=$(ip addr show "$INTERFACE" | grep -oP 'inet \K[\d.]+/\d+' | head -1)
[ -z "$SUBNET" ] && SUBNET="192.168.1.0/24"

echo "🚀 Starting NIKO on $INTERFACE ($SUBNET)"

# Use the virtual environment's Python if it exists
if [ -f "$HOME/niko-venv/bin/python3" ]; then
    sudo "$HOME/niko-venv/bin/python3" "$(dirname "$0")/niko" \
        --interface "$INTERFACE" --monitored-subnet "$SUBNET"
else
    sudo python3 "$(dirname "$0")/niko" \
        --interface "$INTERFACE" --monitored-subnet "$SUBNET"
fi
