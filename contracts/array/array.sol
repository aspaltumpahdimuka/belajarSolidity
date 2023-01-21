// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Array {
    // beberapa cara membuat array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // Array tetap dengan elemen yang dinisiasi ke 0.
    uint[10] public arrayTetap;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity dapat mengembalikan seluruh array.
    // Tetapi fungsi ini harus dihindari untuk
    // array yang dapat bertambah panjang tanpa batas.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Menambahkan ke array
        // Ini akan menambah panjang array sebesar 1.
        arr.push(i);
    }

    function pop() public {
        // Menghapus elemen terakhir dari array
        // Ini akan mengurangi panjang array sebesar 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // Menghapus tidak mengubah panjang array.
        // Ini mengatur ulang nilai pada indeks ke nilai default,
        // dalam hal ini 0
        delete arr[index];
    }

    function examples() external {
        // membuat larik dalam memori, hanya ukuran tetap yang dapat dibuat       
        uint[] memory a = new uint[](5);
    }
}
