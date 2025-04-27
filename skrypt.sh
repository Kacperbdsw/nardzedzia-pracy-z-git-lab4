#!/bin/bash

case "$1" in
    --init)
        git clone https://github.com/Kacperbdsw/nardzedzia-pracy-z-git-lab4.git cloned_repo
        cd cloned_repo || exit
        export PATH=$PATH:$(pwd)
        echo "Repo sklonowane i PATH ustawiony"
        ;;
    *)
        echo "Nieprawidłowa opcja."
        ;;
esac