import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/container_sized.dart';
import 'package:flutter_learning/widgets/rows_columns.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottons Widgets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Container_Sized(),));
                  },
                style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(14)),
                  elevation: MaterialStateProperty.all(20),
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  overlayColor: const MaterialStatePropertyAll(Colors.orange),
                ),
                child: const Text(
                  'Text Button',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                // backgroundColor: MaterialStatePropertyAll(Colors.orange),
                backgroundColor: MaterialStatePropertyAll(Theme.of(context).primaryColor)
              ),
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const Rows_Columns(),));
                },
                child: const Text(
                  'Elevated Button',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
