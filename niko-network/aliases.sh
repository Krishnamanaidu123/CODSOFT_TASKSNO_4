#!/bin/bash
# NIKO Bash Aliases – source this file or add to ~/.bashrc

alias niko='sudo /usr/local/bin/niko'
alias niko-wifi='niko --interface wlan0'
alias niko-eth='niko --interface eth0'
alias niko-monitor='niko --interface wlan0 --monitored-subnet 192.168.1.0/24'
alias niko-fast='niko --interface wlan0 --report-interval 10'
alias niko-debug='niko --interface wlan0 -v'
alias niko-logs='tail -f ~/NIKO/niko.log'
alias niko-report='ls -lt ~/NIKO/reports/*.json | head -1 | xargs cat | python3 -m json.tool'

echo "✅ NIKO aliases loaded!"
