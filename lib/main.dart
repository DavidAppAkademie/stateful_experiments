import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyScreen(),
    ),
  );
}

class MyScreen extends StatefulWidget {
  // Konstruktor
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  // State (Variablen)
  String t = "Hallo";
  bool isScreenYellow = true;

  // Methoden
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isScreenYellow ? Colors.yellow : Colors.black,
      body: Center(
        child: Column(
          children: [
            Text(
              t,
              style: TextStyle(
                  color: isScreenYellow ? Colors.black : Colors.white),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isScreenYellow ? Colors.pink : Colors.purple,
              ),
              onPressed: () {
                // rebuild after
                setState(() {
                  if (isScreenYellow == true) {
                    isScreenYellow = false;
                  } else {
                    isScreenYellow = true;
                  }
                });
              },
              child: const Text("Change text"),
            ),
          ],
        ),
      ),
    );
  }
}
