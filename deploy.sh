#!/bin/bash

# Stolen from rexim dotfiles

set -e

SCRIPT_DIR="$( cd "$( dirname "$BASH_SOURCE[0]" )" && pwd)"

symlinkFile() {
    filename="$SCRIPT_DIR/$1"
    destination="$HOME/$2/$1"

    mkdir -p $(dirname "$destination")

    if [ -L "$destination" ]; then
        echo "[WARNING] $filename already symliked"
        return
    fi

    if [ -e "$destination" ]; then
        echo "[ERROR] $destination exists but it's not a symlink. Please fix it yourself"
        return
    fi

    ln -s "$filename" "$destination"
    echo "[INFO] $filename -> $destination"
}

deployManifest() {
    for row in $(cat "$SCRIPT_DIR/$1"); do
        if [[ "$row" =~ ^#.* ]]; then
            continue
        fi

        filename=$(echo "$row" | cut -d '|' -f1)
        operation=$(echo "$row" | cut -d '|' -f2)
        destination=$(echo "$row" | cut -d '|' -f3)

        case $operation in
            symlink)
                symlinkFile $filename $destination
                ;;
            *)
                echo "[WARNING] Unknown operation $operation. Skipping ..."
                ;;
        esac
    done
}

if [ -z "$@" ]; then
    echo "Usage: $0 <MANIFEST>"
    echo "ERROR: no MANFIFEST file is provided"
    exit 1
fi

deployManifest $1
