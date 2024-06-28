#!/bin/bash

# Đặt thông tin cơ bản
USER="root"
PASSWORD="your_password"
DATABASE="your_database"
BACKUP_DIR="/path/to/backup/directory"
DATE=$(date +%F-%H-%M-%S)

# Tạo backup
mysqldump -u $USER -p$PASSWORD $DATABASE > $BACKUP_DIR/$DATABASE-$DATE.sql

# Xóa các backup cũ hơn 7 ngày (tùy chỉnh số ngày theo nhu cầu)
find $BACKUP_DIR -type f -name "*.sql" -mtime +7 -exec rm {} \;
