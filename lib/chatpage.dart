import 'package:flutter/material.dart';
import 'package:whatsapp_2/utility_widgets.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'USER 1',
      'USER 2',
      'USER 3',
      'USER 4',
      'USER 5',
      'USER 6',
      'USER 7',
      'USER 8',
      'USER 9',
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print("tapped");
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      child: Icon(
                        Icons.person,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      entries[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      ),
                    ),
                    UtilityWidget().heightSpacer(60),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
