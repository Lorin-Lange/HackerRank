

read N
SUM=0
while read NUM || [ -n "$NUM" ]; do
    SUM=$(( SUM + NUM ))
done
printf "%.3f" `echo $SUM/$N | bc -l`