import 'package:flutter/material.dart';

import 'appbar_reusable_iconButton.dart';
import 'message_screen.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0, // space betw circle avatar and back arrow
        title: Row(
          children: const <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/img_10.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Username'),
            )
          ],
        ),
        actions: [
          IconButtonReusable(
            inputIcon: const Icon(Icons.video_call),
          ),
          IconButtonReusable(
            inputIcon: const Icon(Icons.call),
          ),
          IconButtonReusable(
            inputIcon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: MessageScreen(),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 7,
                    decoration: InputDecoration(
                      prefixIcon: const IconTheme(
                        data: IconThemeData(color: Colors.grey),
                        child: Icon(Icons.tag_faces_outlined),
                      ),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          ReusableMessageBox(
                            requiredIcon: Icons.attachment_sharp,
                          ),
                          ReusableMessageBox(
                            requiredIcon: Icons.attach_money_sharp,
                          ),
                          ReusableMessageBox(
                            requiredIcon: Icons.camera_alt,
                          ),
                        ],
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 0,
                        ),
                      ),
                      hintText: 'Message',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.1),
                  child: FloatingActionButton(
                    backgroundColor: Color(0xFF075E54),
                    onPressed: () {},
                    child: const Icon(Icons.mic),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableMessageBox extends StatelessWidget {
  const ReusableMessageBox({
    Key? key,
    required this.requiredIcon,
  }) : super(key: key);

  final IconData requiredIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: InkWell(
        onTap: () {},
        child: IconTheme(
          data: IconThemeData(color: Colors.grey),
          child: Icon(requiredIcon),
        ),
      ),
    );
  }
}
