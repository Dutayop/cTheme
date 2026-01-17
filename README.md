# CibTem

Custom Admin Theme for Pterodactyl Panel

---

## Overview

**CibTem** adalah custom theme untuk **Pterodactyl Admin Panel** yang berfokus pada:
- Tampilan modern & konsisten
- Stabil untuk production
- Tidak merusak fungsi inti panel

Tema ini hanya memodifikasi **Blade Template** dan **CSS**, tanpa menyentuh backend logic atau database.

---

## Requirements

- Pterodactyl Panel sudah terinstall
- Path default: `/var/www/pterodactyl`
- Akses root
- Bash shell

---

## File Structure

```

installAdmin.sh
themeAdmin.sh

```

---

## File Description

### installAdmin.sh (WAJIB)

Script awal yang **harus dijalankan terlebih dahulu**.

Fungsi:
- Memperbaiki pemanggilan `asset()` di `admin.blade.php`
- Mencegah error:
```

Undefined constant "themes"

```
- Membuat backup otomatis file Blade
- Menyiapkan sistem agar kompatibel dengan custom theme

### themeAdmin.sh

Script utama untuk menerapkan tema admin.

Fungsi:
- Menginstall CSS tema admin
- Membackup CSS lama
- Membersihkan cache Laravel
- Mengaktifkan tampilan tema

⚠️ **Menjalankan `themeAdmin.sh` tanpa `installAdmin.sh` akan menyebabkan HTTP 500 Error.**

---

## Installation

### 1. Masuk ke direktori Pterodactyl

```

cd /var/www/pterodactyl

```

### 2. Jalankan installer admin (WAJIB)

```

bash installAdmin.sh

```

### 3. Install tema admin

```

bash themeAdmin.sh

```

---

## Rollback (Restore Default)

Jika ingin mengembalikan ke kondisi semula:

```

cd /var/www/pterodactyl
cp resources/views/layouts/admin.blade.php.bak.* resources/views/layouts/admin.blade.php
php artisan view:clear
php artisan optimize:clear

```

---

## Notes

- Tema hanya mempengaruhi **Admin Panel**
- User Panel (React) tidak dimodifikasi langsung
- Aman digunakan di VPS production
- Backup otomatis dibuat setiap eksekusi script

---

## License

MIT License

Bebas digunakan, dimodifikasi, dan dikembangkan untuk keperluan pribadi maupun komersial.
```