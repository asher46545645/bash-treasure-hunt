#!/usr/bin/env bash

set -euo pipefail

DIR=needle

mkdir -p "$DIR"

for f in "$DIR"/{a..g}{a..g}.txt; do
    printf "%s\n" "$1" > "$f"
done

printf "needle\n%s\n" "$1" > "$(random_file_in "$DIR")"

echo "Your next secret is the last line of the only file in $PUZZLE/$DIR that contains 'needle'."
