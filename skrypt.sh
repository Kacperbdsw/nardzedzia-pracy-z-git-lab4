#!/bin/bash

case "$1" in
    --date)
            echo "Dzisiejsza data: $(date)"
        ;;
    --logs)
        mkdir -p logs
        for ((i=1; i<=100; i++)); do 
            filename="logs/log${i}.txt"
            echo "Nazwa pliku: log${i}.txt" > "$filename"
            echo "Data utworzenia: $(date)" >> "$filename"
        done
        echo "Stworzono 100 plikow"
        ;;
    --help)
        echo "Dostępne opcje:"
        echo "  --help          Wyświetl pomoc"
        echo "  --date          Wyświetl dzisiejszą datę"
        echo "  --logs [liczba]    Utwórz pliki logx.txt (domyślnie 100)"
        ;;
    *)
        echo "Nieprawidłowa opcja."
        ;;
esac