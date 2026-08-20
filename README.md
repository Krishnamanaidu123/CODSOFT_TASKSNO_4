# CODSOFT_TASKSNO_4

# NIKO NETWORK – Network Intelligence & Knowledge Observation

[![Python](https://img.shields.io/badge/Python-3.8+-blue?style=flat-square&logo=python)](https://www.python.org/)
[![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Kali%20Linux-lightgrey?style=flat-square)](https://www.kali.org/)

**Advanced Network Detection and Live Traffic Intelligence Engine**

## 🚀 Quick Start

    bash
     # Clone the repository
       git clone https://github.com/yourusername/niko-network.git
       cd niko-network

     # Run the setup script (creates virtual environment, installs deps)
       ./setup.sh

     # Start NIKO (auto‑detects interface and subnet)
       sudo niko

# ✨ Features

🔍 Advanced Threat Detection: ARP spoofing, port scanning, DoS attacks

🌐 Real‑time Enrichment: DNS resolution and GeoIP location

🖥️ Passive OS Fingerprinting: Identify Windows, Linux, macOS

⚡ High‑Performance Async Engine: Handles high‑throughput traffic

📊 Comprehensive Reporting: JSON exports with detailed data


📖 Usage


    bash
      # Basic monitoring
        sudo niko --interface wlan0

      # Monitor a specific subnet
        sudo niko --interface wlan0 --monitored-subnet 192.168.1.0/24

      # Custom report interval (30 seconds)
        sudo niko --interface wlan0 --report-interval 30

      # Verbose mode (debugging)
        sudo niko --interface wlan0 -v


## 🧪 Testing
    bash
       ./test_niko.sh


##  📊 Reports
 All session reports are saved as JSON in the reports/ directory.


## 🚀 How to Push to GitHub
  After creating all these files in a local folder:

    bash
      cd niko-network
      git init
      git add .
      git commit -m "Initial commit: NIKO NETWORK v3.0.0"
      git remote add origin https://github.com/Krishnamanaidu2526/niko-network.git
      git branch -M main
      git push -u origin main

## ▶️ How to Use on a Fresh Kali System

Clone the repo:

    bash
      git clone https://github.com/Krishnamanaidu2526/niko-network.git
      cd niko-network

Run the setup script:

    bash
      ./setup.sh

Start NIKO:

    bash
       sudo niko


## 📝 License
MIT License – see LICENSE file.


# 🚀 NIKO NETWORK — Happy Detecting! 🐱‍💻✨
