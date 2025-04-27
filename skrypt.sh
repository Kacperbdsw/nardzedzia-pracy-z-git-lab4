#!/bin/bash

case "$1" in
    --help)
        echo "Dostępne opcje:"
        echo "  --help          Wyświetl pomoc"
        echo "  --date          Wyświetl dzisiejszą datę"
        echo "  --logs [liczba]    Utwórz pliki logx.txt (domyślnie 100)"
    *)
        echo "Nieprawidłowa opcja."
        ;;
esac