import 'package:flutter/material.dart';
import 'dart:convert';
import './model/pizza.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String documentsPath = '';
  String tempPath = '';

  Future getPaths() async {
    final docDir = await getApplicationDocumentsDirectory();
    final tempDir = await getTemporaryDirectory();
    setState(() {
      documentsPath = docDir.path;
      tempPath = tempDir.path;
    });
  }

  // int appCounter = 0;

  // Future readAndWritePreferences() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   appCounter = prefs.getInt('appCounter') ?? 0;
  //   appCounter++;
  //   await prefs.setInt('appCounter', appCounter);

  //   setState(() {
  //     appCounter = appCounter;
  //   });
  // }

  // Future deletePreferences() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.clear();

  //   setState(() {
  //     appCounter = 0;
  //   });
  // }

  // String pizzaString = "";
  // List<Pizza> myPizzas = [];

  // Future readJsonFile() async {
  //   String myString = await DefaultAssetBundle.of(
  //     context,
  //   ).loadString('assets/pizzalist.json');
  //   List pizzaMapList = jsonDecode(myString);
  //   // setState(() {
  //   //   pizzaString = myString;
  //   // });

  //   List<Pizza> myPizzas = [];
  //   for (var pizza in pizzaMapList) {
  //     Pizza myPizza = Pizza.fromJson(pizza);
  //     myPizzas.add(myPizza);
  //   }

  //   String convertToJSON(List<Pizza> pizzas) {
  //     return jsonEncode(pizzas.map((pizza) => jsonEncode(pizza)).toList());
  //   }

  //   String json = convertToJSON(myPizzas);
  //   print(json);

  //   return myPizzas;
  // }

  @override
  void initState() {
    super.initState();
    getPaths();
    // readAndWritePreferences();
    // readJsonFile().then((value) {
    //   setState(() {
    //     myPizzas = value;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Flutter JSON Afif"),
    //     backgroundColor: Colors.red,
    //   ),
    //   body: ListView.builder(
    //     itemCount: myPizzas.length,
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         title: Text(myPizzas[index].pizzaName),
    //         subtitle: Text("${myPizzas[index].description} - \$ ${myPizzas[index].price}"),
    //       );
    //     },
    //   ),
    // );

    //   return Scaffold(
    //     appBar: AppBar(
    //       title: const Text("Shared Preferences Afif"),
    //       backgroundColor: Colors.green,
    //     ),
    //     body: Container(
    //       child: Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             Text("You have openend the app $appCounter times"),
    //             ElevatedButton(onPressed: (){deletePreferences();}, child: const Text("Reset Counter"))
    //           ],
    //         ),
    //       ),
    //     ),
    //   );
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Path Provider Afif"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Documents Path: $documentsPath"),
          Text("Temporary Path: $tempPath"),
        ],
      ),
    );
  }
}
