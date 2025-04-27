#!/bin/bash

case "$1" in
    --date)
            echo "Dzisiejsza data: $(date)"
        ;;
    --logs)
        liczba=${2:-100} #Domyslne 100 jesli nie zostnaie podana liczba
        mkdir -p logs
        for ((i=1; i<=liczba; i++)); do 
            filename="logs/log${i}.txt"
            echo "Nazwa pliku: log${i}.txt" > "$filename"
            echo "Data utworzenia: $(date)" >> "$filename"
        done
        echo "Stworzono 100 plikow"
        ;;
    --help)
        echo "Dostępne opcje:"
        echo "  --help -h         Wyświetl pomoc"
        echo "  --init         Sklonuj repo"
        echo "  --date -d       Wyświetl dzisiejszą datę"
        echo "  --logs [liczba] -l    Utwórz pliki logx.txt (domyślnie 100)"
        echo "  --e [liczba] -e    Utwórz pliki error.txt (domyślnie 100)"
        ;;
    --init)
        git clone https://github.com/Kacperbdsw/nardzedzia-pracy-z-git-lab4.git cloned_repo
        cd cloned_repo || exit
        export PATH=$PATH:$(pwd)
        echo "Repo sklonowane i PATH ustawiony"
        ;;
   --error|-e)
       liczba=${2:-100}
       mkdir -p errorx
       for ((i=1; i<=liczba; i++)); do
           filename="errorx/error${i}.txt"
           echo "Nazwa pliku: error${i}.txt" > "$filename"
           echo "Data utworzenia: $(date)" >> "$filename"
           echo "Utworzony przez: skrypt.sh" >> "$filename"
       done
       echo "Utworzono $liczba plików error."
       ;;
   *)
       echo "Nieprawidłowa opcja."
       ;;
esac