// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
    uint public count; // deklarasi variabel count

    // Function yang membaca variabel count
    function get() public view returns (uint) {
        return count;
    }

    // Function untuk menambahkan nilai count
    function inc() public {
        count += 1;
    }

    // Function untuk mengurangi nilain count
    function dec() public {
        // Function ini akan gagal jika kurang dari 0.
        count -= 1;
    }
}
