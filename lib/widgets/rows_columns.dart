import 'package:flutter/material.dart';

class Rows_Columns extends StatelessWidget {
  const Rows_Columns({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Columns"),
      ),
      body: Container(
        // height: 300,
        // width: 300,
        height: h,
        width: w,
        color: Colors.yellow,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 60,width: 60,color: Colors.red,),
            Container(height: 60,width: 60,color: Colors.blue,),
            Container(height: 60,width: 60,color: Colors.green,),
            Container(height: 60,width: 60,color: Colors.black,),
            Container(height: 60,width: 60,color: Colors.purple,),
            Container(height: 60,width: 60,color: Colors.orange,),
            Container(height: 60,width: 60,color: Colors.deepPurple,),
          ],
        )

        // Wrap ( //for solving error of pixel overflow
        //   direction: Axis.vertical,
        //   alignment: WrapAlignment.start,
        //
        //
        //   //Row(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   // mainAxisAlignment: MainAxisAlignment.start,
        //   // mainAxisAlignment: MainAxisAlignment.end,
        //
        //   // crossAxisAlignment: CrossAxisAlignment.end,
        //   // crossAxisAlignment: CrossAxisAlignment.start,
        //   // crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(height: 60,width: 60,color: Colors.red,),
        //     Container(height: 60,width: 60,color: Colors.blue,),
        //     Container(height: 60,width: 60,color: Colors.green,),
        //     Container(height: 60,width: 60,color: Colors.black,),
        //     Container(height: 60,width: 60,color: Colors.purple,),
        //     Container(height: 60,width: 60,color: Colors.orange,),
        //     Container(height: 60,width: 60,color: Colors.deepPurple,),
        //   ],
        // ),
      ),
    );
  }
}
