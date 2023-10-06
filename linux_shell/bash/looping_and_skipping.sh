

for((I=1; I < 100; I++)); do
    if [ $(( $I % 2 )) -eq 1 ]; then                                
        echo $I
    fi
done