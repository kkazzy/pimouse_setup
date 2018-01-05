#!/bin/bash -xve
#written by K.kawazu

exec 2> /tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1                   # すぐにファイルはできないので待つ
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0  # 安全のためモータの電源を切る
