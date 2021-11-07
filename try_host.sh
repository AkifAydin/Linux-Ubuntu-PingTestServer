#!/bin/bash

#Programm zum testen, ob eine Seite erreichbar ist.

if [ $# -eq 0 ];  then  #if oder while
echo "kein -h oder -s eingegeben"
exit
fi

if [ $1 == -h ]; then  #wenn Parameter 1 -h ist
  if ping -i 10 $2;then  # 10sec default bei Parameter -h
	echo $2 "OK"
  else 
	echo $2 "FAILED"
  fi
else
  if [ $1 == -s ]; then
     if [ $# -eq 3 ]; then
	if ping -i $2 $3; then #Optional eigene <sec> angabe
   		echo $3 "OK"
	else
		echo $3 "FAILED"
	fi
     else
	if ping -i 5 $2; then  # 5sec default bei Parameter -s
                echo $2 "OK"
        else
                echo $2 "FAILED"
        fi
     fi
   fi
fi

#ping -i 10 $2
#else if [$1 == -s ]; then
# if [$# == 3];then 
#if ping -i 

#echo $#; Anzahl Parameter
#for i in $#; do echo $i; done