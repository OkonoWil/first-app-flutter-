import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formation Aout',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GesStock"),
        leading: const Icon(Icons.menu),
        centerTitle: true,
        elevation: 0,
        actions: const [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        color: Colors.grey.withOpacity(.2),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(),
              FacebookCard(),
              Divider(),
              FacebookCard(),
              Divider(),
              FacebookCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FacebookCard extends StatelessWidget {
  const FacebookCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/image1.png"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Youthinside Kls"),
                        Row(
                          children: [
                            Text("2h"),
                            SizedBox(width: 5),
                            Icon(Icons.wordpress_outlined),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.more_horiz),
                    Icon(Icons.close),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tay-C exagere aussi avec les filles sur scene hein. Meme les filles la Yeuch",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Icon(Icons.thumb_up), Icon(Icons.face), Text("2")],
                ),
                Text("2 comments"),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Like"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment_outlined),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Like"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Share"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blueAccent,
            Colors.yellow,
            Colors.green,
            Colors.red,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            spreadRadius: 1,
            blurRadius: 20,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Colors.blueAccent,
          width: 2,
        ),
        // color: Colors.red,
        //  borderRadius: BorderRadius.circular(20),
        // shape: BoxShape.circle,
        image: const DecorationImage(
          image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Kribi.jpg/300px-Kribi.jpg"),
          fit: BoxFit.contain,
        ),
      ),
      child: const Center(
          child: Text(
        "Kribi",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      )),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
