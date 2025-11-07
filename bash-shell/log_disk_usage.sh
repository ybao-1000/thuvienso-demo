#!/bin/bash
# ========================================
# Script: log_disk_usage.sh
# Mục đích: Giám sát dung lượng ổ đĩa và file dữ liệu thư viện số
# ========================================

LOG_FILE="logs/disk_usage.log"
DATA_FILE="static/data/books.json"

# Tạo thư mục logs nếu chưa có
mkdir -p logs

# Ghi thời gian hiện tại
echo "===== $(date '+%Y-%m-%d %H:%M:%S') =====" >> "$LOG_FILE"

# Ghi dung lượng file dữ liệu
if [ -f "$DATA_FILE" ]; then
    FILE_SIZE=$(du -h "$DATA_FILE" | cut -f1)
    echo "Dung lượng dữ liệu: $FILE_SIZE ($DATA_FILE)" >> "$LOG_FILE"
else
    echo "File dữ liệu không tồn tại: $DATA_FILE" >> "$LOG_FILE"
fi

# Ghi tình trạng ổ đĩa
echo "Dung lượng ổ đĩa hiện tại:" >> "$LOG_FILE"
df -h | grep '^/dev/' >> "$LOG_FILE"

# Ngăn cách giữa các log
echo "----------------------------------------" >> "$LOG_FILE"

echo "Đã ghi log vào $LOG_FILE"
