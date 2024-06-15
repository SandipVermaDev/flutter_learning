import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Widget'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackbar = SnackBar(
                action: SnackBarAction(
                    label: 'Undo',
                    textColor: Colors.blue,
                    // backgroundColor: Colors.orange,
                    onPressed: () {}),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 3),
                // padding: EdgeInsets.all(20),
                content: const Text('This is an error'));
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: const Text('Show Snackbar'),
        ),
      ),
    );
  }
}
