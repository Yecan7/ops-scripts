#!/bin/bash
# 简易磁盘检查
CURRENT=$(df -h / | awk 'NR==2{print $5}' | tr -d '%')
[ $CURRENT -gt 90 ] && echo "$(date) 磁盘告警：使用率$CURRENT%" > /tmp/disk_alert.log
