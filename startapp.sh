#!/bin/bash

FILE_PATH="/config/xdg/data/115/User Data/setting"

if [ ! -f "$FILE_PATH" ]; then
    mkdir -p "$(dirname "$FILE_PATH")"
    echo "[General]" > "$FILE_PATH"
    echo "download_path=/mnt" >> "$FILE_PATH"
else
    if grep -q "download_path=" "$FILE_PATH"; then
        sed -i 's|download_path=.*|download_path=/mnt|' "$FILE_PATH"
    else
        echo "download_path=/mnt" >> "$FILE_PATH"
    fi
fi

export LC_ALL=zh_CN.UTF-8
exec /usr/local/115/115
