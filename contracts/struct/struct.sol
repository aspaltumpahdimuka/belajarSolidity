// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Jadwalku {
    struct Jadwal {
        string text;
        bool completed;
    }

    // array dari struct 'Jadwal'
    Jadwal[] public jadwalku;

    function create(string calldata _text) public {
        // 3 cara menginisiasi struct
        // - memanggilnya seperti function
        jadwalku.push(Jadwal(_text, false));

        // key value mapping
        jadwalku.push(Jadwal({text: _text, completed: false}));

        // menginisialisasi sebuah struct kosong dan kemudian memperbaruinya
        Jadwal memory jadwal;
        jadwal.text = _text;
        // jadwal.completed diinisialisasi ke flase

        jadwalku.push(jadwal);
    }

    // Solidity secara otomatis membuat pengambil untuk 'jadwalku' jadi
    // Anda sebenarnya tidak membutuhkan fungsi ini.
    function get(uint _index) public view returns (string memory text, bool completed) {
        Jadwal storage jadwal = jadwalku[_index];
        return (jadwal.text, jadwal.completed);
    }

    // update text
    function updateText(uint _index, string calldata _text) public {
        Jadwal storage jadwal = jadwalku[_index];
        jadwal.text = _text;
    }

    // update completed
    function toggleCompleted(uint _index) public {
        Jadwal storage jadwal = jadwalku[_index];
        jadwal.completed = !jadwal.completed;
    }
}
