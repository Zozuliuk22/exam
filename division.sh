#!/bin/bash

echo -n "Enter first number : " 
read first_number  
      
echo -n "Enter second number : "
read second_number

echo -n "Enter number round : "
read round_number

rezult=$(echo "scale=$round_number; $first_number/$second_number" | bc)

echo "Rezult = $rezult"
