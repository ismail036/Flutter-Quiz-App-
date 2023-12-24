import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
  const Calculate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculateHome(),
    );
  }
}

class CalculateHome extends StatefulWidget {
  const CalculateHome({super.key});

  @override
  State<CalculateHome> createState() => _CalculateHomeState();
}

class _CalculateHomeState extends State<CalculateHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Hesap Makinesi"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  print("");
                },
                child: Text("1")),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  print("");
                },
                child: Text("1")),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  print("");
                },
                child: Text("1")),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  print("");
                },
                child: Text("1")),
          ],
        ),
      ),
    );
  }
}

