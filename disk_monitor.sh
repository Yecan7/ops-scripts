#!/bin/bash
# 监控磁盘空间使用率，超过阈值发送邮件通知
THRESHOLD=80
df -h | awk 'NR>1 {print $5, $6}' | sed 's/%//' | while read usep mount; do
  if [ "$usep" -ge "$THRESHOLD" ]; then
    echo "Disk usage on $mount is ${usep}%" | mail -s "Disk Alert on $mount" admin@example.com
  fi
done