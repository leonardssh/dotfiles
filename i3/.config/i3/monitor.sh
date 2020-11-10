#!/bin/bash

xrandr --output HDMI-1-0 --primary --auto --right-of eDP1

# default monitor is eDP1
MONITOR=eDP1

# functions to switch from eDP1 to HDMI and vice versa
function ActivateHDMI {
	echo "Extending to HDMI"
	xrandr --output HDMI-1-0 --primary --auto --right-of eDP1
	MONITOR=HDMI-1-0
}

function DeactivateHDMI {
	echo "Stopping the extending to HDMI"
	xrandr --output HDMI-1-0 --off
	MONITOR=eDP1
}

# functions to check if HDMI is connected and in use
function HDMIActive {
	[ $MONITOR = "HDMI-1-0" ]
}

function HDMIConnected {
	! xrandr | grep "^HDMI-1-0" | grep disconnected
}

# actual script
while true
do
	if ! HDMIActive && HDMIConnected
	then
		ActivateHDMI
	fi

	if HDMIActive && ! HDMIConnected
	then
		DeactivateHDMI
	fi

	sleep 1s
done

