#!/bin/bash -x

read -p "Enter Your Number:" num


for(( i=2; i<=$num ;i++))
do
	x=$(($num%$i))

	if [ $x -eq 0 ]
        then
                freq=0;

					for((j=2;j<=$i;j++))
					do
                      if [ `expr $i % $j` -eq 0 ]
		      			 then
									((freq++))
		       			 fi
					done

					if [ $freq -eq 1 ]
					then
							echo "Prime Factor $i"
					fi
    fi
done
