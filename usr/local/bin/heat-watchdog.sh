#!/bin/sh
if [ $(cat /sys/class/thermal/thermal_zone0/temp) -gt 75000 ]; then
  reboot
fi
