#!/bin/bash

# CPU Usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1 "%"}')
echo -e "CPU USAGE ${cpu_usage} \n"

# Total memory usage (Free vs Used including percentage)

# Total disk usage (Free vs Used including percentage)

# Top 5 processes by CPU usage

# Top 5 processes by memory usage