echo "1. hello"
echo "2. show date"
echo "3. exit"
read x
if [ $x -eq 1 ]; then
        echo "welcome "
elif [ $x -eq 2 ]; then
        echo $(date)
elif [ $x -eq 3 ]; then
        exit
else
        echo "choice again"
fi

