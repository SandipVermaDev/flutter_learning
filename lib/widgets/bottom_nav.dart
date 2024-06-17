import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/alert.dart';
import 'package:flutter_learning/widgets/animated_text.dart';
import 'package:flutter_learning/widgets/image.dart';
import 'package:flutter_learning/widgets/rows_columns.dart';

class BottomNavWidgwt extends StatefulWidget {
  const BottomNavWidgwt({super.key});

  @override
  State<BottomNavWidgwt> createState() => _BottomNavWidgwtState();
}

class _BottomNavWidgwtState extends State<BottomNavWidgwt> {
  // int selectedindex=0;

  // List <Widget>widgets=[
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];

  PageController pageController=PageController();

  void onItemTap(int index){
    // setState(() {
    //   selectedindex=index;
    // });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      // body: Center(child: widgets.elementAt(selectedindex)),

      body: PageView(
        controller: pageController,
        children: const [
          AlertWidget(),
          Rows_Columns(),
          AnimatedTextWidget(),
          ImageWidget()
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      // currentIndex: selectedindex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.deepPurple,
        onTap: onItemTap,
      ),
    );
  }
}
