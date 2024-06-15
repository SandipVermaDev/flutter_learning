import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container and Sized box'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10), // for inner space
          // margin: const EdgeInsets.all(10),
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              color: Colors.blue,
              // shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(20),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 10,
                  // color: Colors.black
                )
              ]),
          child: Center(
              child: Container(
            margin: const EdgeInsets.all(10), // for outer space
            color: Colors.red,
          )
              //   Text(
              // "Container",
              // style: TextStyle(fontSize: 20),)
              ),
        ),
      ),
      // body: const SizedBox(
      //   height: 100,
      //   width: 50,
      //   child: Text('Sized Box'),
      // ),
    );
  }
}
