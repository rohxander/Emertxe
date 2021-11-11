#!/bin/bash
read -p "ENter the input" var

str1 = Emertxe

case $var in
        -4)
                echo The entered number is -4
                ;;
        -4)     
                echo The entered number is second -4
                ;;
        "Hello")
                echo The entered string is Hello
                ;;
        $str1)  
                echo The entered String is $str1
                ;;
        *)      
                echo OK Bye!
                ;;
esac   
