#!/bin/bash

# Script: count_books.sh
# Chức năng: Hiển thị nội dung JSON và đếm số lượng sách trong file books.json

DATA_FILE="static/data/books.json"

# Kiểm tra xem file có tồn tại không
if [ ! -f "$DATA_FILE" ]; then
    echo "Không tìm thấy file dữ liệu: $DATA_FILE"
    exit 1
fi

# Hiển thị JSON đẹp bằng jq
echo "===== DỮ LIỆU HIỆN CÓ ====="
cat "$DATA_FILE" | jq .
echo "==========================="

# Đếm số lượng sách
BOOK_COUNT=$(jq length "$DATA_FILE" 2>/dev/null)

if [ $? -eq 0 ]; then
    echo "Tổng số sách hiện có trong thư viện: $BOOK_COUNT"
else
    echo "Không thể đọc file JSON. Hãy kiểm tra lại định dạng."
fi
