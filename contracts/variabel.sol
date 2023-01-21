// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {
    // Variabel state disimpan pada blockchain.
    string public text = "Halo bang";
    uint public num = 123;

    function ngapainKek() public {
        // Variabel lokal tidak disimpan ke dalam blockchain.
        uint i = 456;

        // beberapa contoh variabel global
        uint timestamp = block.timestamp; // block timestamp saat ini
        address sender = msg.sender; // address pemanggil
    }
}

/*
Ada 3 jenis variabel dalam Solidity

1. lokal
dideklarasikan di dalam sebuah fungsi
tidak disimpan di dalam blockchain

2. state
dideklarasikan di luar sebuah fungsi
disimpan di dalam blockchain

3. global (memberikan informasi tentang blockchain)
*/