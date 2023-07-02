import 'package:exemplo_listview/components/my_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste do ListView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(children: const [
        MyBox(1),
        MyBox(2),
        MyBox(3),
        MyBox(4),
        MyBox(5),
        MyBox(6),
        MyBox(7),
        MyBox(8),
        MyBox(9),
        MyBox(10),
        MyBox(11),
        MyBox(12),
        MyBox(13),
        MyBox(14),
        MyBox(15),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
