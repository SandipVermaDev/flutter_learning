import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                // color: Colors.cyan,
                padding: const EdgeInsets.all(10),
                child: const Wrap(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhuzW3jNVMSHxA114jbxhxobhfy6qTtNbJjPrVN4Z9waXsJJWcQS2eO3vqZLN9-14FoUM&usqp=CAU'),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sandip Verma',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text('iamsandip2608@gmail.com'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.folder),
              title: Text('My Files'),
            ),
            const ListTile(
              leading: Icon(Icons.folder_shared_rounded),
              title: Text('Shared with me'),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred'),
            ),
            const ListTile(
              leading: Icon(Icons.delete_outline),
              title: Text('Trash'),
            ),
            const ListTile(
              leading: Icon(Icons.upload),
              title: Text('Uploads'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Drawer Widget'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const Center(
        child: Text('Hey there'),
      ),
    );
  }
}
