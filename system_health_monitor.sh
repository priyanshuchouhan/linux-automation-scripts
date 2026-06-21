#!/bin/bash

echo " System Health Report "

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Information:"
wmic OS get FreePhysicalMemory,TotalVisibleMemorySize

echo ""
echo "Top Running Processes:"
tasklist | head -20

echo ""
echo "Health Check Completed Successfully"

