#!/bin/bash
# NIKO Quick Launcher – with interface validation

# Function to get the first active non‑loopback interface
get_valid_interface() {
    for iface in $(ip link show | grep -v lo | grep -E "^[0-9]+:" | awk -F: '{print $2}' | tr -d ' '); do
        if [ -d "/sys/class/net/$iface" ]; then
            echo "$iface"
            return 0
        fi
    done
    echo ""
    return 1
}

# Try to get a valid interface
INTERFACE=$(get_valid_interface)

if [ -z "$INTERFACE" ]; then
    echo "[ERROR] No network interface found. Please specify one manually."
    echo "Usage: sudo niko --interface <iface>"
    exit 1
fi

# Auto‑detect subnet for that interface
SUBNET=$(ip addr show "$INTERFACE" | grep -oP 'inet \K[\d.]+/\d+' | head -1)
[ -z "$SUBNET" ] && SUBNET="192.168.1.0/24"

echo "🚀 Starting NIKO on $INTERFACE ($SUBNET)"

# Use the virtual environment's Python if available
if [ -f "$HOME/niko-venv/bin/python3" ]; then
    sudo "$HOME/niko-venv/bin/python3" "$(dirname "$0")/niko" \
        --interface "$INTERFACE" --monitored-subnet "$SUBNET"
else
    sudo python3 "$(dirname "$0")/niko" \
        --interface "$INTERFACE" --monitored-subnet "$SUBNET"
fi
