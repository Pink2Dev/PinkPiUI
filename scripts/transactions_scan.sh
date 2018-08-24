#!/bin/bash

RUNNING=$(pgrep -x "pink2d" > /dev/null)

# Check if pink2d is running
if $RUNNING
then
	pink2d scanforalltxns
	pink2d scanforstealthtxns
else
	echo "Pinkcoin Wallet is not running."
	exit 1
fi
