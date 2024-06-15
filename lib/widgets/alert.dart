import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Widget'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showDialog(context);
            },
            child: const Text('Show Alert')),
      ),
    );
  }
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // backgroundColor: Colors.purple,
          // elevation: 0,
          // scrollable: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          title: const Text('This is an alert'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is a Demo'),
                Text('This is sandip'),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Cancel Button clicked.'),
                    backgroundColor: Colors.red,
                  ));
                  Navigator.pop(context);
                },
                child: const Text('Cancel')),
            TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Approved Button clicked.'),
                    backgroundColor: Colors.green,
                  ));
                  Navigator.pop(context);
                },
                child: const Text('Approce')),
          ],
        );
      });
}
