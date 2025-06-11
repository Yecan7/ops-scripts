#!/bin/bash
# 基于 binlog 的 MySQL 增量备份脚本
DATE=$(date +%F)
BACKUP_DIR="/backup/mysql-binlogs/$DATE"
mkdir -p "$BACKUP_DIR"
cp /var/log/mysql/mysql-bin.* "$BACKUP_DIR/"