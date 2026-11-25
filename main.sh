#Variables
bpm_version=0.4.1
availables_pkg="[hellobinary] [helloc] [hellopy] [hellorust] [hellocpp]"

#This is where the packages are stored you can modify by adding your own server
bpm_repository="https://raw.githubusercontent.com/zackX86/BPM-FILES/main/"



echo "Welcome to BPM $bpm_version <h> for help "

while true; do

    read -p "> " appname
    
    #Download and execute binary app
    
    if [ $appname = "hellobinary" ]; then
        wget -O hello $bpm_repository/hello
        chmod +x hello
        
        read -r -p "Would you like to run it  y/n ? : " runit
        
        if [ $runit = "y" ]; then
            ./hello
            continue
        
        elif [ $runit = "n" ]; then
            continue
        fi
    
    #Download source code of a hello world C program compiles and execute it
    
    elif [ $appname = "helloc" ]; then
        wget -O hello.c $bpm_repository/hello.c
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

    #Download and execute python application, i want to make rust and C++ apps next
    
    elif [ $appname = "hellopy" ]; then
        wget -O hello.py $bpm_repository/hello.py
        
        read -r -p "Would you like to run it  y/n ? : " runit
        
        if [ $runit = "y" ]; then
            python3 hello.py
            continue
        
        elif [ $runit = "n" ]; then
            continue
        fi
    
    #Download and execute rust applicaton

    elif [ $appname = "hellorust" ]; then
        wget -O hello.rs $bpm_repository/hello.rs
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

        #Download and execute C++ application

    elif [ $appname = "hellocpp" ]; then
        wget -O hello.cpp $bpm_repository/hello.cpp
        g++ -v -o hello hello.cpp
        rm hello.cpp
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
        read -r -p "What distro are you on ? [Debian] [Fedora] : " distrib_name
        if [ $distrib_name = "Debian" ]; then
            echo "Installing dependecies ... "
            echo "Your password will be required"
            sudo apt install gcc rustc python3 g++ -y 
            echo "Done !"
            continue 
        
        
        elif [ $distrib_name = "Fedora" ]; then
                echo "Installing dependecies ... "
                echo "Your password will be required"
                sudo dnf install gcc rustc python3 g++ -y 
                echo "Done !"
                continue 
        
        fi
    
    

    #display version with cool ascii (god this was so long to implement)
    elif [ $appname = "version" ]; then
        cat <<'EOF'
        :::::::::  :::::::::  ::::    ::::      :::     :::  :::::::         :::          :::  
        :+:    :+: :+:    :+: +:+:+: :+:+:+     :+:     :+: :+:   :+:       :+:         :+:+:  
        +:+    +:+ +:+    +:+ +:+ +:+:+ +:+     +:+     +:+ +:+  :+:+      +:+ +:+        +:+  
        +#++:++#+  +#++:++#+  +#+  +:+  +#+     +#+     +:+ +#+ + +:+     +#+  +:+        +#+  
        +#+    +#+ +#+        +#+       +#+      +#+   +#+  +#+#  +#+    +#+#+#+#+#+      +#+  
        #+#    #+# #+#        #+#       #+#       #+#+#+#   #+#   #+# #+#      #+#  #+#   #+#  
        #########  ###        ###       ###         ###      #######  ###      ###  ### #######
EOF
        echo ""
        echo "                          BPM Version $bpm_version https://github.com/zackX86/BPM "
        continue

    #quit

    elif [ $appname = "q" ]; then
    exit

    
    #help
    elif [ $appname = "h" ]; then
        echo "<q> quit | <version> shows version number | <id> install dependencies | <cl> clear screen | <checkrepo> look at the available packages"
        continue
    elif [ $appname = "help" ]; then
        echo "<q> quit | <version> shows version number | <id> install dependencies | <cl> clear screen | <checkrepo> look at the available packages"
        continue
    
    
    #clear using built in clear commmand 
    elif [ $appname = "cl" ]; then
        clear
        continue
    elif [ $appname = "clear" ]; then
        clear
        continue

    
    #checkrepository
    elif [ $appname = "checkrepo" ]; then
        echo "Availables packages are : $availables_pkg : everything is stored at https://github.com/zackX86/BPM-FILES"
        echo ""
        echo "To install an app just type the name of the package"

    fi

done



#v0.4 Dev started : 2026-11-22 12:20 ended : 2026-11-22 17:35
#V0.4.1 Dev started 2026-11-22 15:00 ended : 2026-11-25 18:000
#v0.5 Dev started : tbd ended : tbd
