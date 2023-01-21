// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapping {
    // Mapping keyType address dengan Value uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // mapping selalu mengembalikan nilai.
        // Jika nilai tidak pernah ditetapkan, maka akan mengembalikan nilai default.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // memperberui nilai dari address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // mereset nilai ke nilai default
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // Pemetaan bersarang (pemetaan dari alamat ke pemetaan lain)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // Anda bisa mendapatkan nilai dari pemetaan bersarang
        // bahkan ketika tidak diinisialisas
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}

/*
Mapping dibuat dengan sintaks mapping (keyType => valueType).

KeyType dapat berupa tipe nilai bawaan, byte, string, atau kontrak apa pun.

valueType dapat berupa tipe apa pun termasuk mapping lain atau array.

mapping tidak dapat diulang.

Analogi sederhana untuk menjelaskan mapping adalah sebuah buku telepon. 
Buku telepon ini menyimpan nama dan nomor telepon dari berbagai orang. 
Nama orang dalam buku telepon ini adalah key, dan nomor teleponnya adalah value. 
Seperti yang kita ketahui, nama orang adalah unik dan tidak ada dua orang
yang memiliki nama yang sama, sehingga nama orang dapat digunakan sebagai key yang unik.

Seperti buku telepon, mapping dalam smart contract juga menyimpan pasangan key-value, 
di mana key adalah unik dan value dapat berupa tipe data apa pun yang didukung oleh 
smart contract. Dalam contoh sebelumnya, key dari mapping adalah alamat Ethereum pengguna, 
dan value adalah saldo akun pengguna.

Anda dapat mengambil nomor telepon dari buku telepon dengan mengetahui
nama orang yang bersangkutan, begitu juga dengan mapping dalam smart contract, 
Anda dapat mengambil nilai dari mapping dengan mengetahui key yang sesuai.
*/