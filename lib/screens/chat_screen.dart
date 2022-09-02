import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat_model.dart';

import 'chat_detail_page.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatDataList.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            const Divider(
              height: 10.0,
            ),
            ListTile(
              horizontalTitleGap: 19,
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(chatDataList[index].avatar),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  chatDataList[index].name,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              subtitle: Text(
                chatDataList[index].message,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              trailing: Text(
                chatDataList[index].time,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatDetailPage(),
                  ),
                ); // to navigate to new screen
              },
            ),
          ],
        );
      },
    );
  }
}
