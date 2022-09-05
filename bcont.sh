#!/bin/bash
#date: 24-08-2022
#author: Typeaway14
#purpose: control display brightness more precisely than keyboard hotkey

VALUE=${1:-1}

if [[ $VALUE > 0.19999 && $VALUE < 1.00001 ]];
then
	xrandr --output eDP --brightness $VALUE
else
	echo "Please provide value >0.2 and lesser than 1"
fi
