// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Function {
    // Function dapat mengembalikan lebih dari satu value
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    // value dapat diberi nama.
    function named() public pure returns (uint x, bool b, uint y) {
        return (1, true, 2);
    }

    // Nilai pada return dapat diberikan pada namanya.
    // Dalam hal ini pernyataan return dapat dihilangkan.
    function assigned() public pure returns (uint x, bool b, uint y) {
        x = 1;
        b = true;
        y = 2;
    }

    // gunakan destructuring assignment ketika memanggil
    // function lain yang mengembalikan banyak nilai
    function destructuringAssignments()
        public
        pure
        returns (uint, bool, uint, uint, uint)
    {
        (uint i, bool b, uint j) = returnMany();

        // Values can be left out.
        (uint x, , uint y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    // tidak dapat menggunakan map untuk input maupun output

    // dapat menggunaka array dalam input
    function arrayInput(uint[] memory _arr) public {
        arr = _arr;
    }

    // dapat menggunakan array dalam output
    uint[] public arr;

    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }
}

// memanggil fungsi dengan input nilai
contract XYZ {
    function someFuncWithManyInputs(
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint) {}

    function callFunc() external pure returns (uint) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    function callFuncWithKeyValue() external pure returns (uint) {
        return
            someFuncWithManyInputs({a: address(0), b: true, c: "c", x: 1, y: 2, z: 3});
    }
}
