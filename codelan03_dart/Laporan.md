<h1>Praktikum</h1>
| Nama:   | Muhammad Afif Al Ghifari |
|---------|--------------------------|
| Kelas:  | TI-3H                    |
| NIM:    | 2341720168               |
|         |                          |
<h2>Praktikum 1: Menerapkan Control Flows ("if/else")</h2>

<h3>Langkah 1</h3>
    Ketik atau salin kode program berikut ke dalam fungsi main().
    <br>

```dart

        void main() {
            String test = "test2";
            if (test == "test1") {
                print("test1");
            } else if (test == "test2") {
                print("test2");
            } else {
                print("Something else");
            }

            if (test == "test2") print("Test2 again");
        }

```

<h3>Langkah 2</h3>
    Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
    <br>
    <b>Jawab:</b> 
    <br><img src="img\imgPrak1-1.png">
    <br>Program menampilkan kondisi kedua di if pertama yaitu "test2" dan menampilkan kondisi di if kedua yaitu "test2 again" karena nilai variabel test memenuhi kondisi kedua statement if.


<h3>Langkah 3</h3>
    Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.
        

```dart
        void main() {
            String test = "test2";
            if (test == "test1") {
                print("test1");
            } else if (test == "test2") {
                print("test2");
            } else {
                print("Something else");
            }

            if (test == "test2") print("Test2 again");
            
            // tambahan
            String test = "true";
            if (test) {
                print("Kebenaran");
            }
        }
```
<br>
    <br>
    <b>Jawab:</b> 
    <br><img src="img\imgPrak1-3.png">
    <br>Terjadi error karena variabel test sudah di deklarasikan, dan nilai dari test berbentuk string, bukan boolean. Berikut kode program yang diperbaiki dan hasil run:
    <br>

```dart
        void main() {
            String test = "test2";
            if (test == "test1") {
                print("test1");
            } else if (test == "test2") {
                print("test2");
            } else {
                print("Something else");
            }

            if (test == "test2") print("Test2 again");
            
            // tambahan
            test = "true";
            if (test == "true") {
                print("Kebenaran");
            }
        }
```
<br><img src="img\imgPrak1-3a.png">

<h2>Praktikum 2: Menerapkan Perulangan "while" dan "do-while"</h2>

<h3>Langkah 1</h3>
    Ketik atau salin kode program berikut ke dalam fungsi main().
    <br>

```dart

        void main() {
            while (counter < 33) {
                print(counter);
                counter++;
            }
        }

```

<h3>Langkah 2</h3>
    Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
    <br>
    <b>Jawab:</b> 
    <br><img src="img\imgPrak2-2.png">
    <br>Eror terjadi karena variabel 'counter' belum dideklarasikan, Berikut kode program yang diperbaiki dan hasil run:

```dart
        void main() {
            num counter = 0;
            while (counter < 33) {
                print(counter);
                counter++;
            }
        }
```
<br><img src="img\imgPrak2-2a.png">

<h3>Langkah 3</h3>
    Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.

```dart
        void main() {
            num counter = 0;
            while (counter < 33) {
            print(counter);
            counter++;
        }
        // Tambahan
            do {
                print(counter);
                counter++;
            } while (counter < 77);
        }
```
<br>
    <b>Jawab:</b> 
    <br><img src="img\imgPrak2-3.png">
    <br>Variabel 'counter' di increment sampai bernilai 76.

<h2>Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"</h2>

<h3>Langkah 1</h3>
    Ketik atau salin kode program berikut ke dalam fungsi main().
    <br>

```dart

        void main() {
            for ( Index = 10; index < 27; index) {
                print(Index);
            }
        }

```

<h3>Langkah 2</h3>
    Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
    <br>
    <b>Jawab:</b> 
    <br><img src="img\imgPrak3-2.png">
    <br>Terjadi error dimana variabel 'Index' belum di deklarasikan tipe datanya, dan nama variabel yang salah karena adanya typo. Seharusnya yang digunakan yaitu antara 'Index' atau 'index'. Berikut kode program yang diperbaiki dan hasil run:

```dart
        void main() {
            for ( int index = 10; index < 27; index) {
                print(index);
            }
        }
```
<br><img src="img\imgPrak3-2a.png">
<br>for loop terus berjalan karena tidak ada kondisi exit.


<h3>Langkah 3</h3>
    Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda. Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue. Berikut kode program yang diperbaiki dan hasil run:
        

```dart
        void main() {
            for ( int index = 10; index < 27; index) {
                If (Index == 21) break;
                else If (index > 1 || index < 7) continue;
                print(index);
            }
        }
```
<br>
    <br>
    <b>Jawab:</b> 
    <br><img src="img\imgPrak3-3.png">
    <br>Error muncul karena penulisan sintaks Dart salah, yaitu penggunaan If dan else If dengan huruf besar yang seharusnya ditulis if dan else if (huruf kecil), selain itu variabel ditulis tidak konsisten antara Index dan index padahal Dart bersifat case-sensitive, serta struktur if-else yang salah membuat compiler mengira ada method bernama If. Berikut kode program yang diperbaiki dan hasil run:
    <br>

```dart
        void main() {
            for ( int index = 10; index < 27; index) {
                if (index == 21) break;
                else if (index > 1 || index < 7) continue;
                print(index);
            }
        }
```
<br><img src="img\imgPrak3-3a.png">
<br>karena di bagian for tidak ada operasi index++, nilainya tidak pernah berubah sehingga loop bisa jadi tidak jalan atau menyebabkan infinite loop.

<h2>Tugas Praktikum</h2>
    Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.
    <br>
    <b>Jawab:</b>

```dart
        void main() {
        String nama = "Muhammad Afif Al Ghifari";
        String nim = "2341720168";
        bool isPrima = false;

        for (int i = 0; i <= 201; i++) {
            if (i < 2) {
                isPrima = false;
                continue;
            }
            for (int j = 2; j <= i ~/ 2; j++) {
                if (i % j == 0) {
                    isPrima = false;
                    continue;
                } else {
                    isPrima = true;
                }
            }
                if (isPrima) {
                print("Bilangan Prima: $i");
                print("Nama: $nama");
                print("NIM : $nim\n");
            }
        }
    }
```

<br><img src="img\tugas.png">
