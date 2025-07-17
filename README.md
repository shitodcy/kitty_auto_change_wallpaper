# Kitty Auto Wallpaper Changer

Sebuah konfigurasi dan skrip sederhana untuk terminal [Kitty](https://sw.kovidgoyal.net/kitty/) yang secara otomatis mengubah gambar latar belakang setiap kali Anda membuka tab atau jendela baru. Memberikan tampilan yang segar dan dinamis pada lingkungan kerja Anda.

## ✨ Fitur

  * **Latar Belakang Dinamis**: Wallpaper berganti secara acak setiap kali sesi shell baru dimulai.
  * **Kustomisasi Mudah**: Atur opasitas latar belakang dengan mudah agar teks tetap terbaca dengan jelas.
  * **Ringan**: Menggunakan skrip shell sederhana tanpa dependensi berat.
  * **Skema Warna Termasuk**: Dilengkapi dengan tema warna *Catppuccin Macchiato* dan *Birds Of Paradise*.

## 🖼️ Pratinjau

| inage 1                              | image 2                      |
| -------------------------------------------------------------- | ---------------------------------------------------------------- |
|![image-1](https://github.com/shitodcy/kitty_auto_change_wallpaper/blob/main/image/1.png)|![image-2](https://github.com/shitodcy/kitty_auto_change_wallpaper/blob/main/image/2.png)|

## 🛠️ Prasyarat

Sebelum memulai, pastikan Anda telah menginstal:

  * [Kitty Terminal](https://sw.kovidgoyal.net/kitty/build/)
  * Shell standar seperti `bash`, `zsh`, `fish`, dll.
  * `find` dan `shuf` (biasanya sudah terinstal di sebagian besar sistem Linux/macOS).

## 🚀 Instalasi & Pengaturan

Ikuti langkah-langkah ini untuk mengaktifkan fitur latar belakang dinamis.

### 1\. Salin File Konfigurasi

Salin semua file dari repositori ini ke dalam direktori konfigurasi Kitty Anda.

```bash
cp kitty.conf macchiato.conf colors.conf change_wallpaper.sh ~/.config/kitty/
```

### 2\. Buat Direktori Wallpaper

Buat sebuah folder khusus untuk menyimpan koleksi gambar latar belakang Anda.

```bash
mkdir -p ~/.config/kitty/wallpapers
```

**PENTING**: Salin semua gambar (`.jpg`, `.png`) yang ingin Anda gunakan ke dalam folder `~/.config/kitty/wallpapers` ini. Skrip tidak akan berfungsi jika folder ini kosong.

### 3\. Jadikan Skrip Dapat Dieksekusi

Berikan izin eksekusi pada skrip `change_wallpaper.sh` agar dapat dijalankan oleh shell.

```bash
chmod +x ~/.config/kitty/change_wallpaper.sh
```

### 4\. Atur Pemicu Otomatis

Tambahkan skrip ke file startup shell Anda agar dapat berjalan secara otomatis. Pilih perintah yang sesuai dengan shell yang Anda gunakan.

  * **Untuk BASH:**

    ```bash
    echo "~/.config/kitty/change_wallpaper.sh" >> ~/.bashrc
    ```

  * **Untuk ZSH:**

    ```bash
    echo "~/.config/kitty/change_wallpaper.sh" >> ~/.zshrc
    ```

  * **Untuk Fish Shell:**

    ```fish
    echo "sh ~/.config/kitty/change_wallpaper.sh" >> ~/.config/fish/config.fish
    ```

  * **Untuk KornShell (ksh):**
    Pastikan `ENV` menunjuk ke file `.kshrc`, lalu tambahkan path skrip ke `.kshrc`.

    ```bash
    # Tambahkan ini ke ~/.profile jika belum ada
    echo 'export ENV=$HOME/.kshrc' >> ~/.profile

    # Tambahkan pemicu ke .kshrc
    echo "~/.config/kitty/change_wallpaper.sh" >> ~/.kshrc
    ```

  * **Untuk C-Shell (csh/tcsh):**

    ```bash
    echo "sh ~/.config/kitty/change_wallpaper.sh" >> ~/.cshrc
    ```

### 5\. Muat Ulang Konfigurasi

Tutup total semua jendela terminal Kitty Anda, lalu buka kembali. Wallpaper acak seharusnya sudah muncul sebagai latar belakang.

## ⚙️ Kustomisasi

Anda dapat dengan mudah menyesuaikan beberapa pengaturan di dalam file `kitty.conf`:

  * **Transparansi Latar Belakang**: Ubah nilai `background_opacity` untuk mengatur tingkat transparansi.
  * **Skema Warna**: Ganti skema warna dengan mengubah baris `include`.
