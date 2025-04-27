#!/bin/bash

case "$1" in
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