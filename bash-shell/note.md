Cài đặt jq
sudo apt update
sudo apt install jq -y
-----
Kiểm tra định dạng file json 
cat static/data/books.json | jq .
----
NOTE: jq là công cụ đọc và xử lý file JSON trong terminal (giống như grep dành riêng cho JSON).