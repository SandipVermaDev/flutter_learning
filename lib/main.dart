import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/alert.dart';
import 'package:flutter_learning/widgets/animated_text.dart';
import 'package:flutter_learning/widgets/bottom_nav.dart';
import 'package:flutter_learning/widgets/bottomsheet.dart';
import 'package:flutter_learning/widgets/buttons.dart';
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
import 'package:flutter_learning/widgets/snackbar.dart';
import 'package:flutter_learning/widgets/stack.dart';
import 'package:flutter_learning/widgets/tabbar.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // brightness: Brightness.dark,
        primaryColor: Colors.orange,
      ),
      // home: const Container_Sized(),
      // home: const Rows_Columns(),
      // home: const Buttons(),
      // home: const ListView_GridView(),
      // home: const SnackbarWidget(),
      // home: const DismissibleWidget(),
      // home: const DrawerWidget(),
      // home: const ImageWidget(),
      // home: const AlertWidget(),
      // home: const BottomSheetWidget(),
      // home: const AnimatedTextWidget(),
      // home: const BottomNavWidgwt(),
      // home: const DropDownWidget(),
      // home: const FormWidget(),
      // home: const StackWidget(),
      // home: const TabBarWidget(),
      home: const ImagePickerWidget(),
      // home: const LocationWidget(),
    );
  }
}