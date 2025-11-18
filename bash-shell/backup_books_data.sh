#!/bin/bash

# Script: backup_books_data.sh
# Chức năng: Tự động sao lưu dữ liệu thư viện số

# Đường dẫn đến file dữ liệu gốc
SOURCE_FILE="../static/data/books.json"

# Thư mục lưu bản sao lưu
BACKUP_DIR="/home/ubuntu/iDragonCloud/thuvienso-backup"

# Tên file sao lưu (gồm ngày giờ)
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/books_backup_$DATE.json"

# Tạo thư mục backup nếu chưa có
mkdir -p "$BACKUP_DIR"

# Thực hiện sao lưu
if [ -f "$SOURCE_FILE" ]; then
    cp "$SOURCE_FILE" "$BACKUP_FILE"
    echo "Backup thành công: $BACKUP_FILE"
else
    echo "Lỗi: Không tìm thấy file dữ liệu tại $SOURCE_FILE"
fi
