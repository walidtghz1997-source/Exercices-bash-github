while true; do
        echo "1. Add student"
        echo "2. show students"
        echo "3. delete students"
        echo "4. search functionality"
	echo "5.Count number of students"
	echo "6.Exit"
        read n
	if [ $n -eq 1 ]; then
                echo "enter your name"
                read name
		if grep -q "$name" students.txt; then 
		echo "error name already exists"
	else
		echo "enter your age"
		read age
	        echo "$name - $age" >> students.txt
        fi 
elif [ $n -eq 2 ]; then
                cat students.txt
	elif [ $n -eq 3 ]; then
	    echo "enter a name"
	    read nn  
	    if grep -n "$nn" students.txt; then
	    sed -i "/$nn/d" students.txt
	    echo "name is delete"
    else 
	    echo "not found name"
    fi
elif [ $n -eq 4 ]; then
                echo "enter the name"
                read nm
        if grep -q "$nm" students.txt; then
                echo "Found"
	
	   grep "$nm" students.txt
   else
                echo "not Found"
	fi
elif [ $n -eq 5 ]; then
	grep -c " " students.txt

elif [ $n -eq 6 ]; then 
	exit
fi
done
