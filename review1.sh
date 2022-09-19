  GNU nano 6.4                                                                       review1.sh                                                                        Mod



echo "Welcome to Flip Coin problem"
head=0;
tail=0;

while [ "$head" -lt 11 ] && [ "$tail" -lt 11 ]
do

	x=$(( RANDOM%2 ));
	if [ $x -eq 1 ];
	 then
         	head=$(($head+1))
	 else
        	tail=$(($tail+1))
	fi
done

if [ "$head" -eq 11 ] && [ "$tail" -eq 11 ]
 then
	if [ "$head" -eq 11 ]
  	 then
		while [ "$(($head-$tail))" -gt 2 ]
		do
			tail=$(($tail+1))
		done
	 else
		while [ "$(($tail-$head))" -gt 2 ]
		do
			head=$(($head+1))
		done
	fi
elif [ "head" -eq 11 ]
 then
	echo "Head won by" $(($head-$tail))
 else
	echo "Tail won by" $(($tail-$head))
fi
echo "Final head value" $head;
echo "Final tail count" $tail;
