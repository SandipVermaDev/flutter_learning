import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/alert.dart';
import 'package:flutter_learning/widgets/animated_text.dart';
import 'package:flutter_learning/widgets/bottom_nav.dart';
import 'package:flutter_learning/widgets/bottomsheet.dart';
import 'package:flutter_learning/widgets/container_sized.dart';
import 'package:flutter_learning/widgets/dismissible.dart';
import 'package:flutter_learning/widgets/drawer.dart';
import 'package:flutter_learning/widgets/drop_down.dart';
import 'package:flutter_learning/widgets/forms.dart';
import 'package:flutter_learning/widgets/image.dart';
import 'package:flutter_learning/widgets/image_picker.dart';
import 'package:flutter_learning/widgets/listview_gridview.dart';
import 'package:flutter_learning/widgets/location.dart';
import 'package:flutter_learning/widgets/rows_columns.dart';
import 'package:flutter_learning/widgets/shimmer_effect.dart';
import 'package:flutter_learning/widgets/snackbar.dart';
import 'package:flutter_learning/widgets/stack.dart';
import 'package:flutter_learning/widgets/tabbar.dart';

import 'widgets/buttons.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Learning widgets"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlertWidget(),
                        ));
                  },
                  child: Text("Alert")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnimatedTextWidget(),
                        ));
                  },
                  child: Text("Animated Text")),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavWidget(),
                        ));
                  },
                  child: Text("Bottom Nav")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomSheetWidget(),
                        ));
                  },
                  child: Text("Bottom Sheet")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Buttons(),
                        ));
                  },
                  child: Text("Buttons")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Container_Sized(),
                        ));
                  },
                  child: Text("Container and SizedBox")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DismissibleWidget(),
                        ));
                  },
                  child: Text("Dismissible Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DrawerWidget(),
                        ));
                  },
                  child: Text("Drawer Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DropDownWidget(),
                        ));
                  },
                  child: Text("Drop Down Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormWidget(),
                        ));
                  },
                  child: Text("Form Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImageWidget(),
                        ));
                  },
                  child: Text("Image Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImagePickerWidget(),
                        ));
                  },
                  child: Text("Image Picker Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListView_GridView(),
                        ));
                  },
                  child: Text("List View Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationWidget(),
                        ));
                  },
                  child: Text("Location Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Rows_Columns(),
                        ));
                  },
                  child: Text("Rows Columns Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShimmerEffect(),
                        ));
                  },
                  child: Text("Shimmer Effect")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SnackbarWidget(),
                        ));
                  },
                  child: Text("Snackbar Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StackWidget(),
                        ));
                  },
                  child: Text("Stack Widget")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TabBarWidget(),
                        ));
                  },
                  child: Text("TabBar Widget")),
            ],
          ),
        ),
      ),
    );
  }
}
