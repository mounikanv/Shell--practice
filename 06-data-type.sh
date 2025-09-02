#!/bin/bash
Number1=100
Number2=200

TIMESTAMP=$(DATE)
echo "script executed at :$TIMESTAMP"
sum=$(($Number1+$Number2))
echo "sum of $Number1 and $Number2 is :$sum"

