import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/chat_screen.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';

import 'appbar_reusable_iconButton.dart';
import 'calls_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> appbarBottomTabs = <Tab>[
    const Tab(
      icon: Icon(Icons.camera_alt),
    ),
    const Tab(text: 'CHATS'),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(_handleTabIndex);
    //   ..addListener(() {  // this is event listener to specify what things to happen when a clicking event occurs on tabs
    //   setState(() {
    //
    //   });
    // });
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  _customFAB() {
    if (_tabController.index == 0) {
      return null;
    }

    if (_tabController.index == 1) {
      return FloatingActionButton(
          child: Icon(Icons.message),
          backgroundColor: Color(0xFF075E54),
          onPressed: () {});
    }
    if (_tabController.index == 2) {
      return FloatingActionButton(
          child: Icon(Icons.camera_alt),
          backgroundColor: Color(0xFF075E54),
          onPressed: () {});
    }
    if (_tabController.index == 3) {
      return FloatingActionButton(
          child: Icon(Icons.call),
          backgroundColor: Color(0xFF075E54),
          onPressed: () {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButtonReusable(
            inputIcon: const Icon(Icons.search),
          ),
          IconButtonReusable(
            inputIcon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: appbarBottomTabs),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          // content below each tabs
          Text(''),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: _customFAB(),
    );
  }
}
