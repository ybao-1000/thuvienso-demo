#!/bin/bash
#  Script: clean_old_logs.sh
#  Mục đích: Xoá các file log cũ hơn 1 ngày


LOG_DIR="logs"

if [ -d "$LOG_DIR" ]; then
    find "$LOG_DIR" -type f -name "*.log" -mtime +1 -exec rm {} \;
    echo "Đã xoá các file log cũ hơn 1 ngày trong thư mục $LOG_DIR"
else
    echo "Thư mục log không tồn tại: $LOG_DIR"
fi
