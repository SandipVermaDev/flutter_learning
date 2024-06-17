import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
        backgroundColor: Theme.of(context).primaryColor,
      ),

      body: Stack(
        children: [
          Positioned(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.purple,
              image: DecorationImage(image: AssetImage('assets/demo.jpg'),fit: BoxFit.cover)
            ),
            // child: Image(image: AssetImage('assets/demo.jpg')),
            // child: Image.asset('assets/demo.jpg'),
          )),
          Positioned(
            top: 20,
              right: 20,
              child: Container(height: 30,width: 30,color: Colors.red,)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,width: 50,color: Colors.yellow,
            ),
          )
        ],
      ),

      // body: Container(
      //   color: Colors.blue,
      //   child: Center(
      //     child: Stack(
      //       children: [
      //         Positioned(
      //           top: 10,
      //           left: 10,
      //           child: Container(
      //             height: 250,
      //             width: 250,
      //             color: Colors.blueGrey,
      //           ),
      //         ),
      //         Positioned(
      //           left: 55,
      //           bottom: 20,
      //           child: Container(
      //             height: 300,
      //             width: 300,
      //             color: Colors.yellow,
      //           ),
      //         ),
      //         Center(
      //           child: Container(
      //             height: 150,
      //             width: 150,
      //             color: Colors.red,
      //           ),
      //         ),
      //         Center(
      //           child: Container(
      //             height: 50,
      //             width: 50,
      //             color: Colors.green,
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
