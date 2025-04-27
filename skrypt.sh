#!/bin/bash

case "$1" in
    --logs)
        liczba=${2:-100} #Domyslne 100 jesli nie zostnaie podana liczba
        mkdir -p logs
        for ((i=1; i<=liczba; i++)); do 
            filename="logs/log${i}.txt"
            echo "Nazwa pliku: log${i}.txt" > "$filename"
            echo "Data utworzenia: $(date)" >> "$filename"
        done
        echo "Stworzono $liczba plikow"
        ;;
    *)
        echo "Nieprawidłowa opcja."
        ;;
esac