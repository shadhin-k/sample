import 'package:flutter/material.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(7, 94, 84, 1),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  'USER 1',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Last seen at 10:00 am',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.video_call,
                color: Colors.white,
              ),
              Icon(
                Icons.call,
                color: Colors.white,
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
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 150,
                height: 40,
                color: Color.fromARGB(255, 122, 208, 125),
                child: Center(child: Text('where are your')),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 40,
                color: Color.fromARGB(255, 122, 208, 125),
                child: Center(child: Text('where are your')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
