import 'package:flutter/material.dart';
import 'package:loginpanel/theme/colors.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: bgColor,
      body: const Center(
          child: Text(
        "This is Camera page",
        style: TextStyle(color: white),
      )),
    );
  }
}
