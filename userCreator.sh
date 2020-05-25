#!/bin/bash 
echo " "
PATH="$PATH:/usr/games"
export PATH
echo "-------------UserCreator premium mode by Hubert Pasikowski-------------" | pv -qL 20 | lolcat -a -s 3 
echo " podaj nazwe uzytkownika" | pv -qL 15
read username
useradd $username
echo " "
echo "co chcesz zrobic z nowym uzytkownikiem?"
PS1="wybierz opcje" 
options=("wyjdz" "zmiana nazwy" "data waznosci" "godziny logowania" "aktywacja / dezaktywacja" "wymus zmiane hasla" "dodaj do grupy")
select opt in "${options[@]}"
	do
	case $opt in
"zmiana nazwy") 
	echo "podaj nowa nazwe uzytkownika" | pv -qL 60
	read newname
	usermod -l $newname $username
	;;
"data waznosci") echo "podaj date waznosci konta" | pv -qL 60
	echo "podaj date waznosci"
	read expiredata
	chage -d $expiredata $username 
	;;
"godziny logowania") 
	echo "podaj godziny logowania w formie" | pv -qL 60
	read loginhours
	;;

"aktywacja / dezaktywacja") 
	echo "wybierz czy aktywowac yes/no"
	read activated 
	;;



"wymus zmiane hasla") echo "w z h" ;;



"dodaj do grupy") echo "d d g " ;;




"wyjdz")
	echo "------------------------------"
	cowsay -f daemon "look at my repo" | pv -qL 40 | lolcat
	echo "------------------------------"
	echo "******************************"
echo "------------------------------" 
	echo "https://github.com/Raspberrek " | lolcat
echo "------------------------------"
	echo "******************************"	
	echo "------------------------------"

	figlet -m small "THX"
	break
	;;
*) echo "nie ma takiej opcji"
;;
esac 
done
