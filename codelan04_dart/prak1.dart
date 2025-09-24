void main() {
  final List<String?> list = [null, null, null, null, null];
  assert(list.length == 5);
  assert(list[1] == null);
  print(list.length);
  print(list[1]);

  list[1] = 'afif';
  list[2] = '2341720168';
  assert(list[1] == 'afif');
  assert(list[2] == '2341720168');
  print(list[1]);
  print(list[2]);
}