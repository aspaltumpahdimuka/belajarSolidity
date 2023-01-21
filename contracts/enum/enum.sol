// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enum {
    // Enum yang mewakili status pengiriman
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Nilai default adalah elemen pertama yang tercantum dalam
    // definisi tipe, dalam hal ini "Pending"
    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Memperbarui status dengan melewatkan uint ke dalam input
    function set(Status _status) public {
        status = _status;
    }

    // Anda dapat memperbarui ke enum tertentu seperti ini
    function cancel() public {
        status = Status.Canceled;
    }

    // delete mereset enum ke nilai pertamanya, 0
    function reset() public {
        delete status;
    }
}

/*
Enum (Enumeration) adalah tipe data yang digunakan dalam pemrograman untuk mendefinisikan
sekumpulan konstanta yang dibatasi. Pada smart contract, 
Enum digunakan untuk mendefinisikan sekumpulan status atau pilihan yang 
diperbolehkan dalam kontrak. 
Enum dapat digunakan untuk membuat kode smart contract lebih terstruktur dan mudah dipahami.

Beberapa contoh penggunaan Enum pada smart contract adalah:

1. Mendefinisikan status dari sebuah transaksi, seperti "pending" atau "complete"

2. Mendefinisikan jenis token yang didukung dalam kontrak, 
seperti "utility" atau "security" token

3. Mendefinisikan pilihan pembayaran dalam kontrak, seperti "cryptocurrency" atau "fiat"

4. Mendefinisikan jenis pembelian dalam kontrak, seperti "pre-order" atau "regular"

Enum dapat membuat kode smart contract lebih mudah dipahami dan dikelola karena membatasi jumlah pilihan yang diperbolehkan dalam kontrak, sehingga memungkinkan untuk pemeriksaan lebih mudah dan meminimalkan kesalahan dalam kontrak.
*/
