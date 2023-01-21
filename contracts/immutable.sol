// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Immutable {
    // konvensi pengkodean untuk variabel constant menggunakan huruf besar
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}

// Variabel immutable seperti constant. Nilai variabel immutable dapat diatur di
// dalam constructor tetapi tidak dapat dimodifikasi setelahnya.


