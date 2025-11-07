import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Silver Arrow'),
              onPressed: () {
                color = Colors.grey.shade700;
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Bayside Blue'),
              onPressed: () {
                color = Colors.blue.shade900;
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('AMR Green'),
              onPressed: () {
                color = Colors.green.shade900;
                Navigator.pop(context, color);
              },
            ),
          ],
        ),
      ),
    );
  }
}
