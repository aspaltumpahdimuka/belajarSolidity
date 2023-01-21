// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Primitives {
    bool public boo = true;

    /*
     uint adalah singkatan dari unsigned integer, yang berarti bilangan bulat non negatif
    berbagai ukuran tersedia
        uint8 berkisar antara 0 hingga 2 ** 8 - 1
        uint16 berkisar antara 0 hingga 2 ** 16 - 1
        ...
        uint256 berkisar antara 0 hingga 2 ** 256 - 1
    */
    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123; //uint adalah alias untuk uint256

    /*
    Bilangan negatif diperbolehkan untuk tipe int.
    Seperti uint, rentang yang berbeda tersedia dari int8 hingga int256
    
    int256 berkisar dari -2 ** 255 hingga 2 ** 255 - 1
    int128 berkisar dari -2 ** 127 hingga 2 ** 127 - 1
    */
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; // int sama dengan int256

    // nilai minimal dan maksimal int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /*
    Dalam Solidity, tipe data byte mewakili urutan byte.
    Solidity menyajikan dua jenis tipe byte:

     - array byte berukuran tetap
     - array byte berukuran dinamis.
     
     Istilah byte dalam Solidity mewakili array byte dinamis.
     Ini adalah singkatan dari byte[] .
    */
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    // nilai default
    // Variabel yang tidak ditetapkan memiliki nilai default
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
