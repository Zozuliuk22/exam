#!/bin/bash

while true; do #ввод чисел пока происходит ошибка деления на ноль
	echo -n "Enter first number : " 
	read first_number  
      
	echo -n "Enter second number : "
	read second_number

	echo -n "Enter number round : "
	read round_number

	if [[ $second_number = 0 ]]; then  #проверка деления на ноль
  	  echo "Error! Divide by zero!"
	else 
          rezult=$(echo "scale=$round_number; $first_number/$second_number" | bc | sed -e 's/^\./0./' -e 's/^-\./-0./')
  	  break
	fi
done

echo "Rezult = $rezult"
