#!/bin/bash
# 输出系统状态信息
echo "==== CPU & Memory ===="
top -b -n 1 | head -n 5
echo "==== Disk Usage ===="
df -h
echo "==== Recent Logins ===="
last -n 5