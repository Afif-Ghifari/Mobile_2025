void main() {
  String nama = "Muhammad Afif Al Ghifari";
  String nim = "2341720168";
  bool isPrima = false;

  for (int i = 0; i <= 201; i++) {
    isPrima = true;
    if (i < 2) {
      isPrima = false;
      continue;
    }
    for (int j = 2; j <= i ~/ 2; j++) {
      if (i % j == 0) {
        isPrima = false;
        break;
      }
    }
    if (isPrima) {
      print("Bilangan Prima: $i");
      print("Nama: $nama");
      print("NIM : $nim\n");
    } else {
      print("Bilangan: $i\n");
    }
  }
}
