#!/bin/bash

echo "System Users and Their Login Times"
echo "---------------------------------"

# Get all users (from /etc/passwd)
users=$(cut -d: -f1 /etc/passwd)

for user in $users; do
    # Check if user has ever logged in
    last_log=$(last -F "$user" | head -n 1 | awk '{print $4" "$5" "$6" "$7" "$8}')
    
    if [[ -n "$last_log" && "$last_log" != "wtmp begins" ]]; then
        echo "User: $user"
        echo "Last login: $last_log"
        echo "Active sessions: $(who | grep -c "^$user ")"
        echo "---------------------------------"
    else
        echo "User: $user"
        echo "Last login: Never"
        echo "Active sessions: 0"
        echo "---------------------------------"
    fi
done