#!/bin/bash

# CPU Usage
echo "******| CPU     |******"
read cpu_usage <<< $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1 "%"}')
echo -e "CPU Usage(%) ${cpu_usage} \n"

# Total memory usage (Free vs Used including percentage)
echo "******| MEMORY  |******"
read mem_free mem_used <<< $(top -bn1 | grep "MiB Mem" | sed "s/.*\([0-9.]*\) total, *\([0-9.]*\) free, *\([0-9.]*\) used.*/\1 \2 \3/")
echo -e "Memory Free(%) $(awk "BEGIN {print $mem_free/($mem_free+$mem_used) * 100; exit}")"
echo -e "Memory Used(%) $(awk "BEGIN {print $mem_used/($mem_free+$mem_used) * 100; exit}")"

# Total disk usage (Free vs Used including percentage)

# Top 5 processes by CPU usage

# Top 5 processes by memory usage