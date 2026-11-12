#this var changes every version
bpmversion=0.2
echo "Welcome to BPM $bpmversion <h> for help "
while true; do
    
    read -p "Enter an app name : " appname
    
    #download and execute binary app
    
    if [ $appname = "hellobinary" ]; then
        wget -O hello https://raw.githubusercontent.com/zackX86/BPM-FILES/main/hello
        chmod +x hello
        
        read -r -p "Would you like to run it  y/n ? : " runit
        
        if [ $runit = "y" ]; then
            ./hello
            continue
        elif [ $runit = "n" ]; then
            continue
        fi
    
    #download source code of C program compile and execute it
    
    elif [ $appname = "hellosource" ]; then
        wget -O hello.c https://raw.githubusercontent.com/zackX86/BPM-FILES/main/hello.c
        gcc -v -o hello hello.c
        rm hello.c
        chmod +x hello
        
        read -r -p "Would you like to run it  y/n ? : " runit
        
        if [ $runit = "y" ]; then
            ./hello
            continue
        elif [ $runit = "n" ]; then
            continue
        fi

    #download and execute python application, i want to make rust and C++ apps next
    
    elif [ $appname = "hellopy" ]; then
        wget -O hello.py https://raw.githubusercontent.com/zackX86/BPM-FILES/main/hello.py
        
        read -r -p "Would you like to run it  y/n ? : " runit
        
        if [ $runit = "y" ]; then
            python3 hello.py
            continue
        elif [ $runit = "n" ]; then
            continue
        fi





    #misilianous stuff 

    elif [ $appname = "version" ]; then
        echo "BPM Version $bpmversion "
        continue

    elif [ $appname = "q" ]; then
    exit

    elif [ $appname = "h" ]; then
        echo "<q> quit <version> shows version number <q> quit"
        continue


    fi
done