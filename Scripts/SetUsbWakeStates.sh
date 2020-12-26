#!/bin/bash

if [[ $(id -u) -ne 0 ]] ; then echo "Please run SetUsbWakeStates with sudo or as root" ; exit 1 ; fi


deviceNames=("USB Receiver" # Logitech Wireless Keyboard
		 "Gaming Mouse G502" # Logitech Mouse
		 "Microsoft® Nano Transceiver v2.1" # Microsoft Wireless Keyboard
		 )

delimiter="product:"
IFS=""
while read product
do
	for deviceName in ${deviceNames[@]}
	do
		if [[ "$product" == *"$deviceName"* ]]; then
			echo $product
			wakeup="${product/product:*}power/wakeup"
			echo enabled > $wakeup
		fi
	done
done < <(grep . /sys/bus/usb/devices/*/product)
