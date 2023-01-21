// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EtherUnits {
    uint public satuWei = 1 wei;
    // 1 wei sama dengan 1
    bool public apakahSatuWei = 1 wei == 1;

    uint public satuEther = 1 ether;
    // 1 ether sama dengan 10^18 wei
    bool public apakahSatuEther = 1 ether == 1e18;
}

/*
Transaksi dibayar dengan ether.

Sama seperti satu dolar sama dengan 100 sen, satu ether sama dengan 10^18 wei.
*/