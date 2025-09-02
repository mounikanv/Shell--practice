#!/bin/bash

NUMBER=$1
# -gt --> greater than
# -lt --> less than
# -eq --> equal
# -ne --> not equal
if [$NUMBER -lt 10] 
then
    echo "Given number $Number is less then 10"
else
    echo "Given number $Number is grater then 10"
fi    
