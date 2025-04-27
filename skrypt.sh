#!/bin/bash

case "$1" in
    --logs)
        mkdir -p logs
        for ((i=1; i<=100; i++)); do 
            filename="logs/log${i}.txt"
            echo "Nazwa pliku: log${i}.txt" > "$filename"
            echo "Data utworzenia: $(date)" >> "$filename"
        done
        echo "Stworzono 100 plikow"
        ;;
    *)
        echo "Nieprawidłowa opcja."
        ;;
esac