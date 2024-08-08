import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatefulWidget {
  const ShimmerEffect({super.key});

  @override
  State<ShimmerEffect> createState() => _ShimmerEffectState();
}

class _ShimmerEffectState extends State<ShimmerEffect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shimmer Effect"),
        centerTitle: true,
      ),
      body: Shimmer.fromColors(
        // direction: ShimmerDirection.rtl,
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
        //   child: Text(
        // "Sandip Verma",
        // style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              title: Container(height: 8,width: double.infinity,color: Colors.yellow,),
              subtitle: Container(height: 8,color: Colors.pink,),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },),
      ),
    );
  }
}
