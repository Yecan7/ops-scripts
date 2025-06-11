#!/bin/bash
# 与 Nagios 配合自动重启服务的脚本
SERVICE="$1"
if ! systemctl is-active --quiet $SERVICE; then
    systemctl restart $SERVICE
    echo "$SERVICE auto-restarted on $(hostname) at $(date)" | mail -s "AutoFix: $SERVICE" admin@example.com
fi