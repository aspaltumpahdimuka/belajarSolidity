// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Loop {
    function loop() public {
        // for loop
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Lompat ke iterasi berikutnya dengan continue
                continue;
            }
            if (i == 5) {
                // keluar dari loop dengan break
                break;
            }
        }

        // while loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
}

/*
Solidity mendukung perulangan for, while, dan do while.

Jangan menulis perulangan yang tidak terbatas karena dapat mencapai batas gas, menyebabkan transaksi Anda gagal.

Karena alasan di atas, perulangan while dan do while jarang digunakan.
*/
