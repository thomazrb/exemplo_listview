import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final int number;
  const MyBox(this.number, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 100,
        color: Colors.amber,
        child: Center(child: Text(number.toString())),
      ),
    );
  }
}
