void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  var names1 = <String>{};
    Set<String> names2 = {}; // This works, too.

    names1.add('afif');
    names1.add('2341720168');
    names2.addAll({'afif','2341720168'});

    print(names1);
    print(names2);
}