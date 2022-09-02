import 'package:flutter/material.dart';

class StatusModel {
  //creating sample data for status screen
  final String name;
  final String time;
  final String avatar;

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

  StatusModel(
    this.name,
    this.time,
    this.avatar,
  );
}

List<StatusModel> statusDataList = [
  StatusModel(
    'Sarah',
    '9:02 PM',
    'images/img_2.png',
  ),
  StatusModel(
    'Lee',
    '4:51 PM',
    'images/img_3.png',
  ),
  StatusModel(
    'Sylvia',
    '1:11 PM',
    'images/img_5.png',
  ),
  StatusModel(
    'Daniel',
    '8:35 AM',
    'images/img.png',
  ),
];
