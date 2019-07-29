#! /bin/bash

var1=sudo cat /sys/class/backlight/intel_backlight/brightness
echo $var1
echo $((var1))

if [ $((var1)) -le '6' ]
then
	xbacklight -set 3
else
	xbacklight -dec 5
fi
