import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  static const senderBubble = BubbleStyle(
    margin: const BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
    showNip: false,
  );
  static const receiverBubble = BubbleStyle(
    margin: const BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    showNip: false,
    color: const Color.fromRGBO(225, 255, 199, 1),
  );

  ScrollController customScrollController =
      ScrollController(); // to make the messages appear form bottom when message screen is opened

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      customScrollController.jumpTo(customScrollController.position
          .maxScrollExtent); // keeps the message screen defaultly opened with most recent chats (bottom)
    });
    return ListView(
      // for dynamic content use listview.builder
      controller: customScrollController,
      children: [
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromRGBO(212, 234, 244, 1),
          child: const Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11)),
        ),
        Bubble(
          style: receiverBubble,
          showNip: true,
          child: const Text('Hey there!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: receiverBubble,
          child: const Text('I am using WhatsApp.', textAlign: TextAlign.right),
        ),
        Bubble(
          style: senderBubble,
          showNip: true,
          child: const Text('Hello!'),
        ),
        Bubble(
          style: senderBubble,
          child: const Text('Glad to know that.'),
        ),
        Bubble(
          style: receiverBubble,
          showNip: true,
          child: const Text('Hey there!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: receiverBubble,
          child: const Text('I am using WhatsApp.', textAlign: TextAlign.right),
        ),
        Bubble(
          style: senderBubble,
          showNip: true,
          child: const Text('Hello!'),
        ),
        Bubble(
          style: senderBubble,
          child: const Text('Glad to know that.'),
        ),
        Bubble(
          style: receiverBubble,
          showNip: true,
          child: const Text('Hey there!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: receiverBubble,
          child: const Text('I am using WhatsApp.', textAlign: TextAlign.right),
        ),
        Bubble(
          style: senderBubble,
          showNip: true,
          child: const Text('Hello!'),
        ),
        Bubble(
          style: senderBubble,
          child: const Text('Glad to know that.'),
        ),
        Bubble(
          style: receiverBubble,
          showNip: true,
          child: const Text('Hey there!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: receiverBubble,
          child: const Text('I am using WhatsApp.', textAlign: TextAlign.right),
        ),
        Bubble(
          style: senderBubble,
          showNip: true,
          child: const Text('Hello!'),
        ),
        Bubble(
          style: senderBubble,
          child: const Text('Glad to know that.'),
        ),
        Bubble(
          style: receiverBubble,
          showNip: true,
          child: const Text('Hey there!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: receiverBubble,
          child: const Text('I am using WhatsApp.', textAlign: TextAlign.right),
        ),
        Bubble(
          style: senderBubble,
          showNip: true,
          child: const Text('Hello!'),
        ),
        Bubble(
          style: senderBubble,
          child: const Text('Glad to know that.'),
        ),
      ],
    );
  }
}
