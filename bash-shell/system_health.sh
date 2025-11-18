#!/bin/bash

# Script: system_health.sh
# Mục đích: Kiểm tra hiệu suất hoạt động của hệ thống (CPU, RAM, Disk)

echo "BÁO CÁO HIỆU SUẤT HỆ THỐNG"
echo "Thời gian: $(date)"


# Kiểm tra CPU Usage
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
echo "CPU đang sử dụng: $CPU%"

# Kiểm tra RAM Usage
RAM_USED=$(free -m | awk '/Mem:/ {print $3}')
RAM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
echo "RAM đang sử dụng: $RAM_USED MB / $RAM_TOTAL MB"

# Kiểm tra Disk Usage
DISK=$(df -h / | tail -1 | awk '{print $5}')
echo "Dung lượng ổ đĩa: $DISK"

