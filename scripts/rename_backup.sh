
#!/bin/bash

cd $1
arr=( *.txt )

for file in "${arr[@]}"; do
	mv "$file" "backup_${file}"

done
