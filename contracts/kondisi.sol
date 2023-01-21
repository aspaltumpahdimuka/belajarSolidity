// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IfElse {
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint _x) public pure returns (uint) {
        // if (_x < 10) {
        //     return 6;
        // }
        // return 9;

        // cara singkat untuk menulis pernyataan if / else
        // operator "?" disebut operator ternery
        return _x < 10 ? 6 : 9;
    }
}

/*
Soliditas mendukung pernyataan kondisi if, else if dan else.
*/