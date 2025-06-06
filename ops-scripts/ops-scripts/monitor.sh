#!/bin/bash
# 磁盘使用监控脚本
THRESHOLD=80
df -h | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
  usep=$(echo $output | awk '{ print $1}' | sed 's/%//g')
  partition=$(echo $output | awk '{ print $2 }')
  if [ $usep -ge $THRESHOLD ]; then
    echo "警告: 分区 $partition 使用率达到 $usep%"
  fi
done
