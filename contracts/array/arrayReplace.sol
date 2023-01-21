// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ArrayReplaceFromEnd {
    uint[] public arr;

    // Menghapus sebuah elemen akan menciptakan celah dalam array.
    // Salah satu trik untuk menjaga array tetap ringkas adalah dengan
    // memindahkan elemen terakhir ke tempat yang akan dihapus.
    function remove(uint index) public {
        // Pindahkan elemen terakhir ke tempat yang akan dihapus
        arr[index] = arr[arr.length - 1];
        // Hapus elemen terakhir
        arr.pop();
    }

    function test() public {
        arr = [1, 2, 3, 4];

        remove(1);
        // [1, 4, 3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        // [1, 4]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }
}
