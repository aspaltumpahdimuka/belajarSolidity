// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleStorage {
    // Variabel state untuk menyimpan angka
    uint public num;

    // kita perlu mengirim transaksi untuk menulis/update variabel state.
    function set(uint _num) public {
        num = _num;
    }

    // Kita dapat membaca dari variabel state tanpa mengirim transaksi.
    function get() public view returns (uint) {
        return num;
    }
}

/*
Untuk menulis atau memperbarui variabel state, Anda perlu mengirim transaksi.

Di sisi lain, Anda dapat membaca variabel state, gratis, tanpa biaya transaksi.
*/
