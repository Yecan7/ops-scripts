#!/bin/bash
# 清理 Nginx 日志文件，保留最近7天
LOG_DIR="/var/log/nginx"
find $LOG_DIR -type f -name "*.log" -mtime +7 -exec rm -f {} \;