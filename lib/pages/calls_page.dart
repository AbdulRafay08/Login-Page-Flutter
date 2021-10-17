import 'package:flutter/material.dart';
import 'package:loginpanel/theme/colors.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: bgColor,
      body: const Center(
          child: Text(
        "This is Calls page",
        style: TextStyle(color: white),
      )),
    );
  }
}
