#!/bin/bash

# Script: count_books.sh
# Chức năng: Đếm số lượng sách trong file books.json


DATA_FILE="../static/data/books.json"

# Kiểm tra xem file có tồn tại không
if [ ! -f "$DATA_FILE" ]; then
    echo "Không tìm thấy file dữ liệu: $DATA_FILE"
    exit 1
fi

# Đếm số lượng sách bằng jq
BOOK_COUNT=$(jq length "$DATA_FILE" 2>/dev/null)

if [ $? -eq 0 ]; then
    echo "Tổng số sách hiện có trong thư viện: $BOOK_COUNT"
else
    echo "Không thể đọc file JSON. Hãy kiểm tra lại định dạng."
fi
