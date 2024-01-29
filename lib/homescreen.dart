import 'package:flutter/material.dart';
import 'package:whatsapp_2/chatpage.dart';
import 'package:whatsapp_2/ui/screens/camera_page.dart';
import 'package:whatsapp_2/ui/screens/chat_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(7, 94, 84, 1),
        title: const Text('WhatsApp'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            width: 20.00,
          ),
          PopupMenuButton(
            iconColor: Colors.white,
            onSelected: (value) {
              print(value);
            },
            itemBuilder: ((context) {
              return [
                PopupMenuItem(child: Text('New Group'), value: 1),
                PopupMenuItem(child: Text('New Broadcast'), value: 2),
                PopupMenuItem(
                  child: Text('Linked devices'),
                  value: 3,
                ),
                PopupMenuItem(child: Text('Starred Messages'), value: 4),
                PopupMenuItem(child: Text('Payment'), value: 5),
                PopupMenuItem(
                  child: Text('Settings'),
                  value: 6,
                ),
              ];
            }),
          ),
        ],
        bottom: TabBar(
          unselectedLabelColor: Color.fromARGB(255, 210, 203, 203),
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(text: 'Status'),
            Tab(
              text: 'Calls',
            )
          ],
          controller: _controller,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(7, 94, 84, 1),
        onPressed: () {},
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: TabBarView(
        children: [
          Camera(),
          ChatPage(),
          Text('Status'),
          Text('Calls'),
        ],
        controller: _controller,
      ),
    );
  }
}
