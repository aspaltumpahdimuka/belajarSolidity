// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Gas {
    uint public i = 0;

    // Menggunakan semua gas yang kita kirimkan menyebabkan transaksi gagal.
    // Perubahan status dibatalkan.
    // Gas yang telah digunakan tidak akan dikembalikan.
    function forever() public {
        // Di sini kita menjalankan perulangan sampai semua gas habis
        // dan transaksi gagal
        while (true) {
            i += 1;
        }
    }
}

/*
Berapa banyak ether yang harus Anda bayarkan untuk sebuah transaksi?
Anda membayar gas yang dihabiskan * jumlah harga gas eter, di mana:

- gas adalah unit perhitungan
- gas yang dihabiskan adalah jumlah total gas yang digunakan dalam suatu transaksi
- harga gas adalah jumlah ether yang bersedia Anda bayarkan per gas

Transaksi dengan harga gas yang lebih tinggi memiliki prioritas yang lebih tinggi untuk dimasukkan ke dalam blok.

Gas yang tidak terpakai akan dikembalikan.

Batas Gas
Ada 2 batas atas untuk jumlah gas yang dapat Anda belanjakan

batas gas (jumlah maksimum gas yang dapat Anda gunakan untuk transaksi Anda, yang ditetapkan oleh Anda)
batas gas blok (jumlah maksimum gas yang diperbolehkan dalam satu blok, ditetapkan oleh jaringan)
*/
