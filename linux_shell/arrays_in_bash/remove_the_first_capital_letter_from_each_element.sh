

arr=()

while read line; do
    arr+=("$line")
done

for((i=0; i < ${#arr[@]}; i++)); do 
    arr[$i]="."${arr[$i]:1}
done

echo ${arr[@]}