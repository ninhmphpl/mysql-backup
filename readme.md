- Thay đổi quyền thực thi cho script
```angular2html
chmod +x backup_mysql.sh
```

- Tạo cron job
```angular2html
crontab -e
```
- Thêm nội dung
```angular2html
0 2 * * * /path/to/backup_mysql.sh
```

- Giải thích
```angular2html
Đoạn mã 0 2 * * * /path/to/backup_mysql.sh trong crontab được sử dụng để thiết lập một cron job chạy lúc 2 giờ sáng hàng ngày. Để giải thích rõ hơn về cú pháp này:

0: Đây là phút, tức là job sẽ chạy vào phút thứ 0 của giờ đã chọn.
2: Đây là giờ, job sẽ chạy vào giờ thứ 2, tức là 2 giờ sáng.
*: Dấu sao (*) biểu thị rằng job sẽ chạy vào mọi ngày trong tháng.
*: Dấu sao (*) biểu thị rằng job sẽ chạy trong mọi tháng trong năm.
*: Dấu sao (*) biểu thị rằng job sẽ chạy vào mọi ngày trong tuần.
```


