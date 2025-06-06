#!/bin/bash
# MySQL增量备份脚本
BACKUP_DIR=/data/backup
mkdir -p $BACKUP_DIR
mysqldump -u root -p'password' --all-databases > $BACKUP_DIR/full_backup.sql
