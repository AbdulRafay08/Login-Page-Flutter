import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loginpanel/pages/inside_chat.dart';
import 'package:loginpanel/theme/colors.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Edit",
                style: TextStyle(
                    fontSize: 16, color: primary, fontWeight: FontWeight.w500),
              ),
              LineIcon(
                LineIcons.edit,
                color: primary,
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Chats",
                    style: TextStyle(
                        fontSize: 23,
                        color: white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                        color: textfieldColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      style: const TextStyle(color: white),
                      cursorColor: primary,
                      decoration: InputDecoration(
                          prefixIcon: Icon(LineIcons.search,
                              color: white.withOpacity(0.3)),
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: white.withOpacity(0.3), fontSize: 17)),
                    ),
                  ),
                  tile("assets/BGimg.jfif", "Bilal", "9:00 PM"),
                  tile("assets/BGimg.jfif", "Bilal", "9:00 PM"),
                  tile("assets/BGimg.jfif", "Bilal", "9:00 PM"),
                  tile("assets/BGimg.jfif", "Bilal", "9:00 PM"),
                  tile("assets/BGimg.jfif", "Bilal", "9:00 PM"),
                ],
              ),
            ),
          ],
        ));
  }

  Widget tile(img, name, time) {
    return GestureDetector(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(img),
        ),
        title: Text(
          name,
          style: const TextStyle(
              color: white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Hello!",
          style: TextStyle(fontSize: 16, color: white.withOpacity(0.5)),
        ),
        trailing: Text(
          time,
          style: const TextStyle(color: white, fontSize: 16),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => InsideChat()));
      },
    );
  }
}
