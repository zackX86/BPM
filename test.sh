read -p "Enter an app name : " appname
if [ $appname = "hellobinary" ]; then
    wget -O hello https://raw.githubusercontent.com/zackX86/BPM-FILES/main/hello
    chmod +x hello
    read -r -p "Would you like to run it ? : " runit
    if [ $runit = "yes" ]; then
        ./hello
    fi

elif [ $appname = "hellosource" ]; then
    wget -O hello.c https://raw.githubusercontent.com/zackX86/BPM-FILES/main/hello.c
    gcc -v -o hello hello.c
    rm hello.c
    chmod +x hello
    read -r -p "Would you like to run it ? : " runit
    if [ $runit = "yes" ]; then
        ./hello
    fi

fi