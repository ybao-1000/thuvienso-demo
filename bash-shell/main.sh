#!/bin/bash

# --- KIỂM TRA & CÀI ĐẶT jq ---
if ! command -f jq &> /dev/null; then
    echo "Thư viện 'jq' chưa được cài. Đang tiến hành cài đặt..."
    sudo apt update
    sudo apt install jq -y
else
    echo "Thư viện 'jq' đã có sẵn."
fi

sleep 1

while true; do
    clear
    echo "===== MENU CHƯƠNG TRÌNH ====="
    echo "1) Backup Books Data "
    echo "2) Log Disk Usage"
    echo "3) Clean Old Log"
    echo "4) System Health "
    echo "5) Count Books"
    echo "6) Thoát"
    echo "============================="
    read -p "Nhập lựa chọn (1-6): " choice

    case $choice in
        1)
            bash bash-shell/backup_books_data.sh
            read -p "Nhấn Enter để tiếp tục..."
            ;;
        2)
            bash bash-shell/log_disk_usage.sh
            read -p "Nhấn Enter để tiếp tục..."
            ;;
        3)
            bash bash-shell/clean_old_logs.sh
            read -p "Nhấn Enter để tiếp tục..."
            ;;
        4)
            bash bash-shell/system_health.sh
            read -p "Nhấn Enter để tiếp tục..."
            ;;
        5)
            bash bash-shell/count_books.sh
            read -p "Nhấn Enter để tiếp tục..."
            ;;
        6)
            echo "Đang thoát..."
            exit 0
            ;;
        *)
            echo "Lựa chọn không hợp lệ!"
            sleep 1
            ;;
    esac
done
