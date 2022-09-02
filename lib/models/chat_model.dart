import 'package:flutter/material.dart';

class ChatModel {
  //creating sample data for chat screen
  final String name;
  final String message;
  final String time;
  final String avatar;

  ChatModel(
    this.name,
    this.message,
    this.time,
    this.avatar,
  );
}

List<ChatModel> chatDataList = [
  ChatModel('Daniel', 'Those are near the desk', '8:35 AM', 'images/img.png'),
  ChatModel('James', 'What happened of the plan then?', '7:21 PM',
      'images/img_1.png'),
  ChatModel(
      'Sarah', "Haven't seen them recently", '9:02 PM', 'images/img_2.png'),
  ChatModel(
      'Lee', 'How bout gaming this weekend?', '4:51 PM', 'images/img_3.png'),
  ChatModel(
      'Meena', 'Deadine is in 2 days Matt!!', '10:33 AM', 'images/img_4.png'),
  ChatModel('Sylvia', 'Nah, just usual stuff', '1:11 PM', 'images/img_5.png'),
  ChatModel('Carlos', 'Hey, whats up!', '12:01 PM', 'images/img_6.png'),
  ChatModel(
      'Neil', "I haven't thought of it yet", '3:45 PM', 'images/img_7.png'),
  ChatModel(
      'Sameer', 'You have to be there man!', '11:00 PM', 'images/img_8.png'),
  ChatModel('Ayesha', "Idk, she didn't told me anything yet", '2:13 PM',
      'images/img_9.png'),
];
