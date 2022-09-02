import 'package:flutter/material.dart';

class CallModel {
  //creating sample data for call screen
  final String name;
  final String time;
  final String avatar;
  final Icon callIconType;

  static Icon callReceived = Icon(
    Icons.call_received,
    size: 20,
    color: Colors.green,
  );
  static Icon callMissed = Icon(
    Icons.call_missed,
    size: 20,
    color: Colors.red,
  );

  CallModel(
    this.name,
    this.time,
    this.avatar,
    this.callIconType,
  );
}

List<CallModel> callDataList = [
  CallModel('Sarah', '9:02 PM', 'images/img_2.png', CallModel.callReceived),
  CallModel('Lee', '4:51 PM', 'images/img_3.png', CallModel.callMissed),
  CallModel('Sylvia', '1:11 PM', 'images/img_5.png', CallModel.callMissed),
  CallModel('Daniel', '8:35 AM', 'images/img.png', CallModel.callReceived),
];
