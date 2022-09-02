import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF075E54),
        ), // primary color alternative
        colorScheme: ColorScheme.fromSwatch().copyWith(
          // accent color alternative
          secondary: const Color(0xff25D366),
        ),
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}
