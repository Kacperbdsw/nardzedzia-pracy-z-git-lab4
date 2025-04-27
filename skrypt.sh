#!/bin/bash

case "$1" in
    --date)
        echo "Dzisiejsza data: $(date)"
        ;;
    *)
        echo "Nieprawidłowa opcja."
        ;;
esac