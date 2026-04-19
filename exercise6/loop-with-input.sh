echo " enter a number"
read num
i=1
while [ $i -le $num ]; do
        echo "$i"
        ((i++))
done

