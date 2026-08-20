#!/usr/bin/env bash

set -e

echo "[+] Updating system packages..."
sudo apt update

echo "[+] Installing NIKO system dependencies..."
sudo apt install -y python3 python3-scapy python3-rich python3-maxminddb python3-aiohttp

echo "[+] Making binary executable..."
chmod +x niko

echo "[+] Symlinking NIKO to /usr/local/bin/niko..."
sudo ln -sf "$(pwd)/niko" /usr/local/bin/niko

echo "[✔] Setup complete! Happy Detecting! 🚀"
echo "Run NIKO using: sudo niko --interface eth0"
