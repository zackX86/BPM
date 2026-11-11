read -p "Enter an app name : " appname
if [ $appname = 1 ]; then
    wget http://192.168.1.52:8000/hello
    chmod +x hello
    read -r -p "Would you like to run it ? : " runit
    if [ $runit = "yes" ]; then
        ./hello
    fi

elif [ $appname = 2 ]; then
    wget http://192.168.1.52:8000/hello.c
    gcc -v -o hello hello.c
    rm hello.c
    chmod +x hello
    read -r -p "Would you like to run it ? : " runit
    if [ $runit = "yes" ]; then
        ./hello
    fi

fi