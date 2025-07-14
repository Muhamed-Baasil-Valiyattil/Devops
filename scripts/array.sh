
#!/bin/bash

my_array=("orange" "apple" "guava" "strawberry" "blueberry" "grapes" "lemon")

# To print 0 th element of array
echo "Firs Element of array is : ${my_array[0]}"

# To print last element of array
echo "Last Element of array is : ${my_array[-1]}"

echo "Number of Elements in array is : ${#my_array[@]}"

echo "All Elements in array is : ${my_array[@]}"

echo "Elements of Array from start to 2nd element : ${my_array[@]::2}"

echo "Elements of array from 2nd element to last element : ${my_array[@]:1:}"

echo "Elements from 2nd element to 4rth element : ${my_array[@]:1:5}"
