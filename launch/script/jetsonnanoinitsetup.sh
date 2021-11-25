#!/bin/bash

echo  'KERNEL=="ttyTHS1", MODE:="0666", GROUP:="dialout",  SYMLINK+="move_base"' >/etc/udev/rules.d/move_base_jetson.rules

systemctl daemon-reload
service udev reload
sleep 1
service udev restart
 