import 'package:flutter/material.dart';

class IconButtonReusable extends StatelessWidget {
  IconButtonReusable({Key? key, required this.inputIcon}) : super(key: key);
  Icon inputIcon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: inputIcon,
    );
  }
}
