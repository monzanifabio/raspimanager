#!/bin/bash

while true
do
  clear
echo "$(tput setaf 2)$(tput bold)
       .~~.   .~~.
      '. \ ' ' / .'$(tput setaf 1)$(tput bold)
       .~ .~~~..~.    $(tput sgr0)                   _                          _ $(tput setaf 1)$(tput bold)
      : .~.'~'.~. :   $(tput sgr0)   ___ ___ ___ ___| |_ ___ ___ ___ _ _    ___|_|$(tput setaf 1)$(tput bold)
     ~ (   ) (   ) ~  $(tput sgr0)  |  _| .'|_ -| . | . | -_|  _|  _| | |  | . | |$(tput setaf 1)$(tput bold)
    ( : '~'.~.'~' : ) $(tput sgr0)  |_| |__,|___|  _|___|___|_| |_| |_  |  |  _|_|$(tput setaf 1)$(tput bold)
     ~ .~ (   ) ~. ~  $(tput sgr0)              |_|                 |___|  |_|    $(tput setaf 1)$(tput bold)
      (  : '~' :  )
       '~ .~~~. ~'    $(tput sgr0)  v0.1                                          $(tput setaf 1)$(tput bold)
           '~'
$(tput sgr0)"
echo "
    Welcome to the Raspberry Pi starter script.
    You can find a list of useful commands and programs to get you up and running with your new Pi.
    Simply digit the number and press enter to find out more.\n"
echo "    1) Run update and upgrade"
echo "    2) Install Git"
echo "    3) Install Python3"
echo "    4) Install Python pip"
echo "    5) Install Screen"
echo "    6) Setup a LAMP server"
echo "    ip) Show my Pi ip address"
echo "    q) Exit"
read -p "    Select an option from the menu: " ANSWER
case "$ANSWER" in
  1) clear
    #========================================================= UPDATES & UPGRADES
  echo "     -Updating your Pi
      By running this command I will run $(tput bold)apt-get update$(tput sgr0) and $(tput bold)apt-get upgrade$(tput sgr0).
      It is useful when you have a newly installed version of Raspbian or if you haven't run update recently."
      read -p "      Do you want to continue? y/n " CONTINUE
      case "$CONTINUE" in
        [yY] | [yY][eE][sS])
        echo "    Ok, running updates... \n"
        sudo apt-get update
        sudo apt-get upgrade -y
        ;;
        [nN] | [nN][oO])
        echo "\n No worries... \n"
        ;;
        *)
        echo "    \nPlease enter y/yes or n/no\n"
        ;;
      esac
  sleep 0.5
  ;;
  #========================================================= INSTALL GIT
  2) clear
  echo "     -Installing Git
      By running this command I will install Git.
      Git is useful if you want to manage repositories from Github or
      any other service for version control using Git.
      If you want to learn more about Git visit https://git-scm.com/ "
      read -p "      Do you want to continue? y/n " CONTINUE
      case "$CONTINUE" in
        [yY] | [yY][eE][sS])
        echo "    Ok, installing Git... \n"
        sudo apt install git
        ;;
        [nN] | [nN][oO])
        echo "\n No worries... \n"
        ;;
        *)
        echo "    \nPlease enter y/yes or n/no\n"
        ;;
      esac
  sleep 0.5
  ;;
  #========================================================= INSTALL PYTHON3
  3) clear
  echo "     -Installing Python3
      By running this command I will install Python3.
      Although your version of Raspbian comes with Python2 pre-installed is better to use
      Python3, as it will replace the previous version in the near future.
      You can find more information about Python at https://www.python.org/ "
      read -p "      Do you want to continue? y/n " CONTINUE
      case "$CONTINUE" in
        [yY] | [yY][eE][sS])
        echo "    Ok, installing Python3... \n"
        sudo apt-get install python3
        ;;
        [nN] | [nN][oO])
        echo "\n No worries... \n"
        ;;
        *)
        echo "    \nPlease enter y/yes or n/no\n"
        ;;
      esac
  sleep 0.5
   ;;
   #========================================================= INSTALL PIP
   4) clear
   echo "     -Installing pip
       By running this command I will install pip for Python.
       PIP is a package manager for Python packages.
       A package contains all the files you need for a module.
       Modules are Python code libraries you can include in your project."
       read -p "      Do you want to continue? y/n " CONTINUE
       case "$CONTINUE" in
         [yY] | [yY][eE][sS])
         echo "    Ok, installing pip... \n"
         sudo apt-get install python-pip
         ;;
         [nN] | [nN][oO])
         echo "\n No worries... \n"
         ;;
         *)
         echo "    \nPlease enter y/yes or n/no\n"
         ;;
       esac
   sleep 0.5
    ;;
   #========================================================= INSTALL SCREEN
   5) clear
   echo "     -Installing Screen
       By running this command I will install Screen.
       When you do something in ssh, if you close the ssh session it kills the process.
       Screen allows you to disconnect and reconnect the instance containing the process.
       You can even log off the ssh session altogether and connect from a different computer."
       read -p "      Do you want to continue? y/n " CONTINUE
       case "$CONTINUE" in
         [yY] | [yY][eE][sS])
         echo "    Ok, installing Screen ... \n"
         sudo apt-get install screen
         ;;
         [nN] | [nN][oO])
         echo "\n No worries... \n"
         ;;
         *)
         echo "    \nPlease enter y/yes or n/no\n"
         ;;
       esac
   sleep 0.5
    ;;
      #========================================================= INSTALL LAMP
      6) clear
      echo "    -Install a LAMP server (Linux, Apache, MySQL, PHP)
      By running this command we will install and configure:
      Apache
      PHP
      MySQL"
      read -p "      Do you want to continue? y/n " CONTINUE
      case "$CONTINUE" in
        [yY] | [yY][eE][sS])
        echo "    Ok, installing Apache first... \n"
        sudo apt-get install apache2 -y
        hostname
        sleep 0.5
        echo "    Done
        Next up is PHP"
        sleep 1
        sudo apt-get install php -y
        hostname
        sleep 0.5
        echo "    Cool
        Let's install MySQL now..."
        sleep 1
        sudo apt-get install mysql-server php-mysql -y
        sleep 0.5
        echo "    Restarting Apache..."
        sudo service apache2 restart
        sleep 1
        echo "    You're now good to go!"
        ;;
        [nN] | [nN][oO])
        echo "\n Abort mission! \n"
        ;;
        *)
        echo "    \nPlease enter y/yes or n/no\n"
        ;;
      esac
  sleep 0.5
   ;;
   #========================================================= SHOW IP
   ip) clear
   hostname -I
   sleep 0.5
    ;;
  q)
  echo "
      Goodbye"
  exit ;;
esac
echo "    Press any key to go back"
read INPUT
done
