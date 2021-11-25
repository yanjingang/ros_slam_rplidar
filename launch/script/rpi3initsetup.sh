#!/bin/bash

echo  'KERNEL=="ttyS0", MODE:="0666", GROUP:="dialout",  SYMLINK+="move_base"' >/etc/udev/rules.d/move_base_pi3.rules

systemctl daemon-reload
service udev reload
sleep 1
service udev restart
