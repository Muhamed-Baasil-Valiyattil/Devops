#!/bin/bash


if pgrep -x $1 > /dev/null; then
	echo "Process is running !"

else 
	echo "Process not running";
	$1
	echo "process started !"
fi
