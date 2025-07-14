
#!/bin/bash


if cmp -s "$1" "$2"; then
    echo "The files are identical."
else
    echo "The files are different. Differences:"
    diff -u "$1" "$2"
fi
