import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        // initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            backgroundColor: Theme.of(context).primaryColor,
            bottom: const TabBar(
                indicatorColor: Colors.black,
                indicatorWeight: 5,
                // isScrollable: true,
                tabs: [
                  Tab(
                    icon: Icon(Icons.chat),
                    text: 'CHATS',
                  ),
                  Tab(
                    icon: Icon(Icons.mark_chat_unread_rounded),
                    text: 'STATUS',
                  ),
                  Tab(
                    icon: Icon(Icons.call),
                    text: 'CALLS',
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text(
                'Chats',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'STATUS',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'CALLS',
                style: TextStyle(fontSize: 30),
              ),
            )
          ]),
        ));
  }
}
