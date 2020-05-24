#!/bin/bash
echo " "
PATH="$PATH:/usr/games"
export PATH
echo "-------------UserCreator premium mode by Hubert Pasikowski-------------" | pv -qL 20 | lolcat -a -s 5
echo " podaj nazwe uzytkownika" | pv -qL 15
read username
useradd $username
echo " "
echo "co chcesz zrobic z nowym uzytkownikiem?"
PS1="wybierz opcje"
options=("wyjdz" "pelna nazwa" "data waznosci" "godziny logowania" "aktywacja / dezaktywacja" "wymus zmiane hasla" "dodaj do grupy")
select opt in "${options[@]}"
        do
        case $opt in
"pelna nazwa") echo "p n " ;;


"data waznosci") echo "podaj date waznosci konta" #| pv -qL 60
read datawaznosci
chage -d $datawaznosci $username ;;

"godziny logowania") echo "g l" ;;

"aktywacja / dezaktywacja") echo "a / d" ;;

"wymus zmiane hasla") echo "w z h" ;;

"dodaj do grupy") echo "d d g " ;;

"wyjdz")
echo "------------------------------"
cowsay -f daemon "look at my repo" | pv -qL 40
echo "------------------------------"
echo "https://github.com/Raspberrek " | lolcat
echo "------------------------------"
break ;;
*) echo "nie ma takiej opcji" ;;
esac
done
