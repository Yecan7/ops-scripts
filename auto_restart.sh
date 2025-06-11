#!/bin/bash
# 检查服务是否存活，如不存在则自动重启并发出邮件通知
SERVICE_NAME="nginx"
if ! pgrep -x "$SERVICE_NAME" > /dev/null; then
    systemctl restart $SERVICE_NAME
    echo "$SERVICE_NAME was restarted at $(date)" | mail -s "$SERVICE_NAME Restarted" admin@example.com
fi