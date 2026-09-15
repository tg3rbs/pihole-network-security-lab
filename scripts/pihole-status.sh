#!/bin/bash

echo "=== Pi-hole Network Security Lab ==="
echo "System Status Report"
echo "===================================="

echo
echo "Hostname:"
hostname

echo
echo "IP Address:"
hostname -I

echo
echo "Uptime:"
uptime -p

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "Pi-hole Service Status:"

if systemctl is-active --quiet pihole-FTL; then
    echo "Pi-hole FTL is RUNNING"
else
    echo "Pi-hole FTL is NOT RUNNING"
fi

echo
echo "DNS Resolution Test:"

if dig @127.0.0.1 example.com +short | grep -q .; then
    echo "DNS resolution is WORKING"
else
    echo "DNS resolution FAILED"
fi

echo
echo "Pi-hole Blocking Test:"

BLOCK_RESULT=$(dig @127.0.0.1 doubleclick.net +short)

if echo "$BLOCK_RESULT" | grep -q "0.0.0.0"; then
    echo "Pi-hole blocking is WORKING"
else
    echo "Pi-hole blocking test FAILED"
fi

echo
echo "=== Status Check Complete ==="

