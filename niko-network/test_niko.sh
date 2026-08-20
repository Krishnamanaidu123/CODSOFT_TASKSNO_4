#!/bin/bash
# Quick test – starts NIKO, generates traffic, stops it

echo "🧪 Testing NIKO..."

# Start NIKO in background
sudo /usr/local/bin/niko --interface wlan0 &
NIKO_PID=$!

sleep 3

# Generate some traffic
echo "📡 Generating test traffic..."
ping -c 5 google.com > /dev/null 2>&1
curl -s https://google.com > /dev/null 2>&1
nslookup github.com > /dev/null 2>&1

sleep 5

# Stop NIKO gracefully
sudo kill -2 $NIKO_PID 2>/dev/null

echo "✅ Test complete. Check reports/ for JSON output."
