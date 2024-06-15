import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue='orange';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DropDown Widget'),backgroundColor: Theme.of(context).primaryColor,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              // color: Colors.purple,
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton(
                dropdownColor: Colors.grey,
                isExpanded: true,
                value: selectedvalue,
                icon: Icon(Icons.arrow_drop_down_circle_outlined),
                  items: ['Orange','Apple','Banana','Mango','Grapes'].map<DropdownMenuItem>((String value) {
                    return DropdownMenuItem(value: value,child: Text(value));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedvalue=value;
                    });
                  },),
            )
          ],
        ),
      ),
    );
  }
}
