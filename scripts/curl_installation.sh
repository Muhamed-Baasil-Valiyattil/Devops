#!/bin/bash


source /etc/os-release

case $ID in
	"ubuntu")
		sudo apt update
		sudo apt install curl
	;;

        "rhel")
		sudo dnf install curl -y
	;;

        "alpine")
		sudo apk add curl
	;;
	
        *)
		echo "Distro not identified" >&2
		exit 1

esac




