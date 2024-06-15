import 'package:flutter/material.dart';

class DismissibleWindget extends StatefulWidget {
  const DismissibleWindget({super.key});

  @override
  State<DismissibleWindget> createState() => _DismissibleWindgetState();
}

class _DismissibleWindgetState extends State<DismissibleWindget> {
  List fruits = ['Orange', 'Aplle', 'Mango', 'Banana', 'Graps'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Dismissible Package'),
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            // final fruit = fruits[index];
            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(fruits[index]),
                      backgroundColor: Colors.red,
                      duration: const Duration(seconds: 2),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(fruits[index]),
                      backgroundColor: Colors.green,
                      duration: const Duration(seconds: 2),
                    ));
                  }
                },
                // key: Key(fruit),
                key: Key(fruits[index]),
                background: Container(
                  color: Colors.red,
                ),
                secondaryBackground: Container(
                  color: Colors.green,
                ),
                child: Card(
                  color: Colors.deepPurpleAccent,
                  child: ListTile(
                    title: Text(fruits[index]),
                  ),
                ));
          }),
    );
  }
}
