import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lintasan balap di bawah bayang-bayang Gunung Fuji '
        'dengan salah satu lintasan lurus terpanjang '
        'di dunia balap. '
        'M Afif Al Ghifari 2341720168 ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Hot Kerbs: M Afif 2341720168',
      home: Scaffold(
        appBar: AppBar(title: const Text('Hot Kerbs Demo')),
        body: ListView(children: [
          Image.asset(
            'img/fuji.jpg', width: 600, height: 240, fit: BoxFit.cover
          ),
          titleSection, 
          buttonSection, 
          textSection
          ]),
      ),
    );
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Fuji Speedway',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Sunto, Shizuoka, Jepang',
                style: TextStyle(color: Color.fromARGB(255, 104, 104, 104)),
              ),
            ],
          ),
        ),
        /* soal 3*/
        Icon(Icons.star, color: Color.fromARGB(255, 238, 8, 8)),
        const Text('51'),
      ],
    ),
  );
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
