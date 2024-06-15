import 'package:flutter/material.dart';

class ListView_GridView extends StatefulWidget {
  const ListView_GridView({super.key});

  @override
  _ListView_GridViewState createState() => _ListView_GridViewState();
}

class _ListView_GridViewState extends State<ListView_GridView> {
  List fruits = ['Orange', 'Apple', 'Mango', 'Banana'];
  Map fruits_person = {
    'fruits': ['Orange', 'Apple', 'Mango', 'Banana'],
    'names': ['presan', 'prerna', 'sandip', 'lala']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView and GridView'),
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: GridView.builder(
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context,index){
              return Card(
                child: Center(
                  child: Text(fruits[index]),
                ),
              );
            },
            itemCount: fruits.length,
            )

        // GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     crossAxisSpacing: 20,
        //     mainAxisSpacing: 10,
        //     childAspectRatio: 2/3
        //   ),
        //   children: [
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
        //     ),
        //   ],
        // )

        // ListView.builder(itemBuilder: (context, index) {
        //   return Card(
        //     child: ListTile(
        //       onTap: () {
        //         print(fruits_person['fruits'][index]);
        //       },
        //       leading: Icon(Icons.person),
        //       title: Text(fruits_person['fruits'][index]),
        //       subtitle: Text(fruits_person['names'][index]),
        //     ),
        //   );
        // },
        //   itemCount: fruits.length,
        // )
        //   ListView(
        // // Column(
        //     children: [
        //       Card(
        //         child: ListTile(
        //           title: Text('Orange'),
        //           subtitle: Text('Presan'),
        //         ),
        //       ),
        //       Container(  //see diffrence
        //         child: ListTile(
        //           title: Text('Orange'),
        //           subtitle: Text('Presan'),
        //         ),
        //       ),
        //     ],
        //   )
        );
  }
}
