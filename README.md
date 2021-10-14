# SIKOKO 61

## Catatan 60

Project dibuat masih pake CI 3 & PHP 5, karena server kampus yang dikasih ya cuma itu doang. Ini aplikasi udah masuknya legacy app sih, karena ini project udah turunan dari beberapa generasi dan banyak banget yang udah outdate. Untuk fungsi-fungsi kayak pembagian role, pengecekan, dll nya masih banyak yang manual, jadi bisa baca di comment nya aja. Alurnya emang agak ribet sih, tapi ya dicoba aja semoga kuat.

Kalau ada waktu + resource berlebih + mampu, bisa buat dari awal aja pake framework yang lebih mateng, up to date, dan lebih gampang hehe, seperti laravel atau CI yang lebih baru, dan jangan lupa minta server baru juga yang udah pake PHP 7 keatas. Kalo mau buat dari awal ini saran sih:

Kalo mau buat pake CI 4, bisa pake myth-auth untuk role management nya. Library itu lebih mudah dibandingkan buat manual, dan udah ada juga authorization dan authenticationnya, tinggal edit aja view nya. Sisanya tinggal menyesuaikan aja, kayak table bisa pake datatable, dan lain sebagainya. Kalo mau buat pake Laravel, bisa pake spatie/laravel-permission untuk role & permission management nya. Untuk auth bisa pake jetstream. Kalo table bisa pake [livewire tables](https://rappasoft.com/packages/laravel-livewire-tables). Dan jangan lupa minta server baru aja buat sikoko nya, yang pake PHP 7 setidaknya, kalo landing page server lama masih bisa sih.

## Catatan 61

Untuk Instalasi, bisa lakukan clone. kemudian lakukan konfigurasi sebagai berikut :

1. Ganti baseURL pada file application>config>config.php dan sikoko>config>config.php
2. Konfigurasi database, tinggal generate sql. Sintaks SQL dapat diperoleh pada database>sikoko_60.sql
3. Konfigurasi database.php sesuai dengan database masing-masing

Untuk login, gunakan NIM mahasiswa angkatan 60 (untuk login mahasiswa) dan gunakan NIP Dosen (untuk login dosen) dengan password bebas, asal diisi.
NIM dan NIP dapat dilihat pada file sikoko_60.sql
