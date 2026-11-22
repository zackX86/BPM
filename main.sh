#this var changes every version
bpmversion=0.4
availables_pkg="[hellobinary] [helloc] [hellopy] [hellorust] [hellocpp]"



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
    
    elif [ $appname = "helloc" ]; then
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

        #download and execute C++ application

    elif [ $appname = "hellocpp" ]; then
        wget -O hello.cpp https://raw.githubusercontent.com/zackX86/BPM-FILES/main/hello.cpp
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








    #misilianous stuff 

    #display version with cool ascii (god this was so long to implement)
    elif [ $appname = "version" ]; then
        cat <<'EOF'
        .-----------------------------------------------------------------------------.
        |      :::::::::  :::::::::    :::   :::      :::     :::  :::::::         :::|
        |     :+:    :+: :+:    :+:  :+:+: :+:+:     :+:     :+: :+:   :+:       :+:  |
        |    +:+    +:+ +:+    +:+ +:+ +:+:+ +:+    +:+     +:+ +:+   +:+      +:+ +:+|
        |   +#++:++#+  +#++:++#+  +#+  +:+  +#+    +#+     +:+ +#+   +:+     +#+  +:+ |
        |  +#+    +#+ +#+        +#+       +#+     +#+   +#+  +#+   +#+    +#+#+#+#+#+|
        | #+#    #+# #+#        #+#       #+#      #+#+#+#   #+#   #+# #+#      #+#   |
        |#########  ###        ###       ###        ###      #######  ###      ###    |
        '-----------------------------------------------------------------------------'

EOF
        echo "              BPM Version $bpmversion https://github.com/zackX86/BPM "
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

    

    elif [ $appname = "checkrepo" ]; then
        echo "Availables packages are : $availables_pkg : everything is stored at https://github.com/zackX86/BPM-FILES"
        echo ""
        echo "To install an app just type the name of the package"

    fi

done

#ideas for 0.4 : adding the possibilty of scanning the github repo to see avalable package if that takes too long i might add it later in 0.5 or 0.6 idk.
#Adding more distro compatibilty for the dependecies i want to add Arch Fedora and OpenSUSE  and OpenBSD i might also add gentoo and hurd in the futur (not in the 0.4) cuz it will be funny
#As the time i write this im almost finished with 0.4 i couldnt include Arch OpenBSD and OpenSUSE support like i wanted too cuz i can't check the way to install those apps rn
#I added fedora support tho so for the next version i will add those distro that i couldnt include here

#v0.4 Dev started : 2026-11-22 12:20 ended : tbd
#v0.5 Dev started : tbd ended : tbd