import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/status_model.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          horizontalTitleGap: 19,
          leading: const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('images/img_11.png'),
          ),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Text(
              'My status',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: const Text(
            'Tap to add status update',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          onTap: () {
            // on tap event for call listtile
          },
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.all(15),
          child: Text(
            'Recent updates',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: statusDataList.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  ListTile(
                    horizontalTitleGap: 19,
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(statusDataList[index].avatar),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        statusDataList[index].name,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      'Today, ' + statusDataList[index].time,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
