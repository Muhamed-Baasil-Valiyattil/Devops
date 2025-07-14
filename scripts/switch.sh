#!/bin/bash


read -p "Enter username : " name

case $name in

	"user1")
		echo "Welcome User1!"
	;;

       "user2")
	echo "Welcome User2!!"
	;;

        *)
	echo "You are not Welcome!!!"
	;;
esac

