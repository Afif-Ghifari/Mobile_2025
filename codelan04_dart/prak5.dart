void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var angka = (5, 6);
  var record2 = tukar(angka);
  print(record2);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ('afif', 2341720168);
  print(mahasiswa);

  var mahasiswa2 = ('afif', a: 2, b: true, '2341720168'); // perubahan

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2); 
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
