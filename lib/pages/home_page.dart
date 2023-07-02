import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<int> numbers = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste do ListView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 100,
              color: Colors.amber,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(numbers[index].toString()),
                  InkWell(
                    onTap: () {
                      setState(() {
                        numbers.removeAt(index);
                      });
                    },
                    child: const Icon(Icons.delete),
                  )
                ],
              )),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (numbers.isNotEmpty) {
              numbers.add(numbers.last + 1);
            } else {
              numbers.add(0);
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
