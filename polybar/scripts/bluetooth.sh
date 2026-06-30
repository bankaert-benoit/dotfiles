#!/usr/bin/env bash

DEVICE_MAC=$(bluetoothctl devices Connected | awk 'NR==1 {print $2}')

if [ -z "$DEVICE_MAC" ]; then
	exit 0
fi	

INFO=$(bluetoothctl info "$DEVICE_MAC")
NAME=$(echo "$INFO" | grep -i "Name" | cut -d' ' -f2-)
BATTERY=$(echo "$INFO" | grep -i "Battery Percentage" | awk '{print $4}' | tr -d '()%')

if [ -z "$BATTERY" ]; then
	echo "$NAME"
else
	echo "$NAME $BATTERY%"
fi
