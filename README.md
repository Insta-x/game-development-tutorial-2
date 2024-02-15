# Requirements
Godot Version: 4.2.1

# Questions and Answers
1. Apa saja pesan log yang dicetak pada panel Output?
    > Reached objective!

2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
    > Reached objective!

3. Buka scene `MainLevel` dengan tampilan workspace 2D. Apakah lokasi scene `ObjectiveArea` memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
    > Iya, ketika pesawat sampai ke daerah `ObjectiveArea`, pesan log muncul. Hal ini karena ada script dengan signal yang memanggil pesan log tersebut ketika pesawat sampai ke daerah `ObjectiveArea`.

4. Scene `BlueShip` dan `StonePlatform` sama-sama memiliki sebuah child node bertipe `Sprite`. Apa fungsi dari node bertipe `Sprite`?
    > `Sprite` berguna untuk menampilkan gambar pada game.

5. Root node dari scene `BlueShip` dan `StonePlatform` menggunakan tipe yang berbeda. `BlueShip` menggunakan tipe `RigidBody2D`, sedangkan `StonePlatform` menggunakan tipe `StaticBody2D`. Apa perbedaan dari masing-masing tipe node?
    > `RigidBody2D` memanfaatkan *physics system* yang ada pada Godot sehingga terpengaruh oleh hal seperti gaya dan gravitasi. `StaticBody2D` tidak terpengaruh oleh hal-hal tersebut dan sesuai namanya, umumnya bersifat statis dan tidak bergerak kecuali digerakan oleh script.

6. Ubah nilai atribut `Mass` dan `Weight` pada tipe `RigidBody2D` secara bebas di scene `BlueShip`, lalu coba jalankan scene `MainLevel`. Apa yang terjadi?
    > Ketika `Mass` diubah, tidak ada hal yang terlihat berubah. Hal ini sesuai karena kecepatan naik atau turun pesawat tidak dipengaruhi oleh `Mass`. Berbeda cerita jika ada yang menabrak pesawat, maka `Mass` akan mempengaruhi bagaimana tabrakan tersebut terjadi. Pada Godot 4.2.1, `RigidBody2D` sudah tidak ada atribut `Weight`, namun perhitungan `Weight` bisa diambil dengan cara $Mass \times Gravity$.

7. Ubah nilai atribut `Disabled` pada tipe `CollisionShape2D` di scene `StonePlatform`, lalu coba jalankan scene `MainLevel`. Apa yang terjadi?
    > Pesawat jatuh karena tidak bisa menabrak `StonePlatform`. Ketika `CollisionShape2D` *disabled*, maka `CollisionShape2D` tersebut tidak diperhitungkan pada *physics system* sehingga tidak bisa menabrak atau mendeteksi object lain.

8. Pada scene `MainLevel`, coba manipulasi atribut `Position`, `Rotation`, dan `Scale` milik node `BlueShip` secara bebas. Apa yang terjadi pada visualisasi `BlueShip` di Viewport?
    > `Position` berarti posisi dari `BlueShip` sehingga ketika diubah, maka posisi dari `BlueShip` juga berubah. `Rotation` berarti rotasi dari `BlueShip` sehingga ketika diubah, maka `BlueShip` akan berputar di tempat. `Scale` berarti skala dari `BlueShip` sehingga ketika diubah, ukuran dari `BlueShip` juga berubah.

9. Pada scene `MainLevel`, perhatikan nilai atribut `Position` node `PlatformBlue`, `StonePlatform`, dan `StonePlatform2`. Mengapa nilai `Position` node `StonePlatform` dan `StonePlatform2` tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
    > Karena atribut `Position` mengacu pada position node relatif terhadap `Position` dari parent node. `StonePlatform` memiliki `Position` $(0, 0)$ yang berarti `StonePlatform` berada tepat pada posisi `PlatformBlue`, sedangkan `StonePlatform2` memiliki `Position` $(70, 0)$ yang berarti `StonePlatform2` berada $70$ unit di samping kanan `PlatformBlue`.
