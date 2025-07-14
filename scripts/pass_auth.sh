
#!/bin/bash

read -p "Enter the Username : " uname
read -p "Enter the Password : " pass

if [[ $uname == "user1" ]] && [[ $pass == "password" ]]
then
	echo "You are logged as user1!"

elif [[ $uname == "user2" ]] && [[ $pass == "test" ]]
then
	echo "You are logged as user2!"
else
	echo "Incorrect Credentials!"
fi
