import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Sheet Widget',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                // isDismissible: false,
                // enableDrag: false,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                // ),
                context: context,
                builder: (context) {
                  return const SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Orange'),
                          subtitle: Text('Prerna'),
                        ),
                        ListTile(
                          title: Text('Apple'),
                          subtitle: Text('Sandip'),
                        ),
                        ListTile(
                          title: Text('Banana'),
                          subtitle: Text('Presan'),
                        ),
                        ListTile(
                          title: Text('Grapes'),
                          subtitle: Text('Lala'),
                        ),
                        // ListTile(
                        //   title: Text('Berry'),
                        //   subtitle: Text('Aashu'),
                        // ),
                        // ListTile(
                        //   title: Text('Kivi'),
                        //   subtitle: Text('Manjit'),
                        // ),
                        // ListTile(
                        //   title: Text('Pine Apple'),
                        //   subtitle: Text('Deepu'),
                        // ),
                      ],
                    ),
                  );
                },
              );
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.orange)),
            child: const Text(
              'Show Bottom Sheet',
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
      ),
    );
  }
}
