import 'package:flutter/material.dart';
import 'package:loginpanel/theme/colors.dart';

class InsideChat extends StatefulWidget {
  const InsideChat({Key? key}) : super(key: key);

  @override
  _InsideChatState createState() => _InsideChatState();
}

class _InsideChatState extends State<InsideChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: primary,
        ),
        centerTitle: true,
        title: Text("Bilal"),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.video_call_outlined,
                  color: primary,
                  size: 30,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.phone,
                    color: primary,
                    size: 25,
                  )),
            ],
          ),
        ],
      ),
      bottomNavigationBar: chatfooter(),
      body: Container(),
    );
  }

  Widget chatfooter() {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
      child: Container(
        color: greyColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                iconSize: 25,
                onPressed: () {},
                icon: const Icon(Icons.add),
                color: primary),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: textfieldColor),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.attach_file,
                    color: primary,
                  ),
                ),
                cursorColor: primary,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: primary,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.record_voice_over),
                color: primary),
          ],
        ),
      ),
    );
  }
}
