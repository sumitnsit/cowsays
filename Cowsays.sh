#!/bin/bash
declare -a arr=("\033[0;91m" "\033[0;93m" "\033[0;92m" "\033[0;96m" "\033[0;94m" "\033[0;95m")

neo() {
    text="$1"
    n=${#text}
    for(( i=0; i<n; i++ ))
    do
        echo -n -e "${arr[$i % 6]}${text:$i:1}" 
    done
    echo ""
}

printCow() {
    neo "        \   ^__^"
    neo "         \  (oo)\______"
    neo "            (__)\       )\/\\"
    neo "                ||----w |"
    neo "                ||     ||"
}

printPenguin() {
    neo "        \   .---."
    neo "         \  |o_o |"
    neo "            |:_/ |"
    neo "           //   \ \ "
    neo "          (|     | )"
    neo "         /'\_   _/'\\ "
    neo "         \___)=(___/"
}

printBanner() {
    text="$1"
    n=${#1}
    line="   "
    for(( i=0; i<n+6; i++ ))
    do
        line="$line-"
    done
    neo "$line"
    neo "   \   $1   \\"
    line2="    "
    m=${#1}
    for(( i=0; i<m+6; i++ ))
    do
        line2="$line2-"
    done
    neo "$line2"
    printPenguin
}

printBanner "$1"
