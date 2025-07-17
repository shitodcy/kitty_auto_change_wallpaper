#!/bin/bash

# 1. Tentukan direktori tempat Anda menyimpan semua gambar wallpaper
WALLPAPER_DIR="$HOME/.config/kitty/wallpapers"

# 2. Cari semua file gambar (jpg, jpeg, png) di direktori tersebut,
#    acak urutannya, dan pilih satu baris teratas.
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname \*.jpg -o -iname \*.jpeg -o -iname \*.png \) | shuf -n 1)

# 3. Jika sebuah file gambar ditemukan, gunakan perintah remote control Kitty
#    untuk mengatur gambar tersebut sebagai latar belakang untuk semua jendela.
if [ -n "$RANDOM_WALLPAPER" ]; then
    kitty @ set-background-image --all "$RANDOM_WALLPAPER"
fi
