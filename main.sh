#this var changes every version
bpmversion=0.3
echo "Welcome to BPM $bpmversion <h> for help "
while true; do
    
    read -p "> " appname
    
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
    
    #download and execute rust applicaton

    elif [ $appname = "hellorust" ]; then
        wget -O hello.rs https://raw.githubusercontent.com/zackX86/BPM-FILES/main/hello.rs
        rustc -o hello hello.rs
        rm hello.rs
        chmod +x hello

        read -r -p "Would you like to run it  y/n ? : " runit
        
        if [ $runit = "y" ]; then
            ./hello
            continue
        elif [ $runit = "n" ]; then
            continue
        fi





    #installing dependencies

    elif [ $appname = "id" ]; then
        read -r -p "What distro are you on ? [Debian] : " distrib_name
        if [ $distrib_name = "Debian" ]; then
            echo "Installing dependecies ... "
            sudo apt install gcc rustc python3 g++ -y 
            echo "Done !"
            continue 
        
        fi









    #misilianous stuff 

    #display version with cool ascii (god this was so long to implement)
    elif [ $appname = "version" ]; then
        cat <<'EOF'
        .-----------------------------------------------------------.
        | ____     ____                            __        __     |
        |/\  _`\  /\  _`\   /'\_/`\              /'__`\    /'__`\   |
        |\ \ \L\ \\ \ \L\ \/\      \     __  __ /\ \/\ \  /\_\L\ \  |
        | \ \  _ <'\ \ ,__/\ \ \__\ \   /\ \/\ \\ \ \ \ \ \/_/_\_<_ |
        |  \ \ \L\ \\ \ \/  \ \ \_/\ \  \ \ \_/ |\ \ \_\ \__/\ \L\ \|
        |   \ \____/ \ \_\   \ \_\\ \_\  \ \___/  \ \____/\_\ \____/|
        |    \/___/   \/_/    \/_/ \/_/   \/__/    \/___/\/_/\/___/ |
        '-----------------------------------------------------------'

EOF
        echo "              BPM Version $bpmversion https://github.com/zackX86/BPM "
        continue

    #quit

    elif [ $appname = "q" ]; then
    exit

    
    #help
    elif [ $appname = "h" ]; then
        echo "<q> quit <version> shows version number <q> quit <id> install dependencies <cl> clear screen"
        continue
    
    #clear using built in clear commmand 
    elif [ $appname = "cl" ]; then
        clear
        continue


    fi

done