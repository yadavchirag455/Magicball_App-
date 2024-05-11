import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text('Ask me Anything'),
          ),
          backgroundColor: Colors.brown,
        ),
        body: const Magicball(),
      ),
    ),
  );
}

class Magicball extends StatefulWidget {
  const Magicball({super.key});

  @override
  State<Magicball> createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  int Changescreen = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  Changescreen = Random().nextInt(5) + 1;
                  print('lets Change answer of the question $Changescreen');
                });
              },
              child: Image.asset('images/ball$Changescreen.png'),
            ),
          ),
        ],
      ),
    );
  }
}
