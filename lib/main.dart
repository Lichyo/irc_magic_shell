import 'package:flutter/material.dart';

void main() => runApp(MagicShell());

class MagicShell extends StatefulWidget {
  MagicShell({super.key});

  @override
  State<MagicShell> createState() => _MagicShellState();
}

class _MagicShellState extends State<MagicShell> {
  int counter = 0;

  void increment() {
    counter++;
    print(counter);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
            print(counter);
            setState(() {});
          }
        ),
        body: Center(
          child: Text(
            '$counter',
            style: const TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
