import 'package:flutter/material.dart';

import '../models/calls_model.dart';
import '../models/calls_model.dart';
import '../models/calls_model.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callDataList.length,
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
                backgroundImage: AssetImage(callDataList[index].avatar),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  callDataList[index].name,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              subtitle: Row(
                children: <Widget>[
                  Container(
                    child: callDataList[index].callIconType,
                  ),
                  Text(
                    callDataList[index].time,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.call,
                size: 25,
                color: Color(0xFF075E54),
              ),
              onTap: () {
                // on tap event for call listtile
              },
            ),
          ],
        );
      },
    );
  }
}
