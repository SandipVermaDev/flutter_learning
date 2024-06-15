import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formkey = GlobalKey<FormState>();

  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  trysubmit() {
    final isvalid = _formkey.currentState!.validate();
    if (isvalid) {
      _formkey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Widget'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
              key: _formkey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      key: const ValueKey('firstname'),
                      decoration:
                          const InputDecoration(hintText: 'Enter First Name'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'First Name should not be Empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        firstname = value.toString();
                      },
                    ),
                    TextFormField(
                      key: const ValueKey('lastname'),
                      decoration:
                          const InputDecoration(hintText: 'Enter Last Name'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'Last Name should not be Empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        lastname = value.toString();
                      },
                    ),
                    TextFormField(
                      key: const ValueKey('email'),
                      decoration:
                          const InputDecoration(labelText: 'Enter Email'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'Email should not be Empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        email = value.toString();
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      key: const ValueKey('password'),
                      decoration: const InputDecoration(
                          labelText: 'Enter Password',
                      ),
                      validator: (value) {
                        if (value.toString().length <= 5) {
                          return 'Password should not be less than 6 character';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        password = value.toString();
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextButton(
                        onPressed: () {
                          trysubmit();
                        },
                        child: const Text('Submit'))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
