import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // bottomOpacity: 60,
          // shadowColor: Colors.pinkAccent,
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: const Text("Home"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Login"),
              Tab(text: "Signup"),
            ],
          ),
        ),
        body: Stack(
          children: [
            // Image(
            //   image: AssetImage('assets/BGimg.png'),
            // ),
            TabBarView(
              children: [
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 150,
                        child: const TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: "email or username",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 30,
                        width: 150,
                        child: const TextField(
                          decoration: InputDecoration(hintText: "Password"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (color) => Colors.pink),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 150,
                        child: const TextField(
                          cursorColor: Colors.black,
                          decoration:
                              InputDecoration(hintText: "email or username"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 30,
                        width: 150,
                        child: const TextField(
                          decoration: InputDecoration(hintText: "Password"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (color) => Colors.pink),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Signup",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
                child: Center(
                  child: Text(
                    'Menu',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "About Us",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Help ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
