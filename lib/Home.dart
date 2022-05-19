import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thema5/scren1.dart';
import 'package:thema5/scren2.dart';
import 'package:thema5/scren3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _showAndroid() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('LogOut'),
            content: Text("We hate to see you leave..."),
            actions: [
              ElevatedButton(onPressed: () {}, child: Text("Cancel")),
              ElevatedButton(onPressed: () {}, child: Text("Confirm")),
            ],
          );
        });
  }

  list(String a, dynamic b) {
    return ListTile(
        leading: Icon(
          b,
          color: Colors.black45,
        ),
        title: Text(
          a,
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        onTap: () {});
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text("Telegram"),
          ),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person_outline)),
              Tab(icon: Icon(Icons.people_alt_outlined)),
              Tab(icon: Icon(Icons.widgets_outlined)),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),

        body: Container(child: TabBarView(children: [
          Person(),
          Chats(),
          Channel(),
        ]),),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Yusufjon Toshpulatov",
                  style: TextStyle(fontSize: 17),
                ),
                accountEmail: Text("+998994527702"),
                otherAccountsPictures: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.brightness_3_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(height: 15),
                      CircleAvatar(
                        child: Icon(Icons.bookmark_border),
                      ),
                      SizedBox(height: 15),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/1.jpg'),
                ),
              ),
              list("New group", Icons.group),
              list("New secret chat", Icons.lock_outline),
              list("New chanel", Icons.create_new_folder),
              Divider(
                height: 5,
                color: Colors.black45,
              ),
              list("Contact", Icons.person_outline),
              list("Folder", Icons.folder),
              list("Geolocation", Icons.location_on),
              list("Saved Message", Icons.bookmark_border),
              list("Call", Icons.call),
              list("Settings", Icons.settings),
              Divider(
                height: 5,
                color: Colors.black45,
              ),
              list("Settings Plus", Icons.add_circle_outline),
              list("Categories", Icons.folder_open_sharp),
              list("Install Theme", Icons.palette_outlined),
              list("Registration", Icons.brush),
              list("Support Group", Icons.people_alt),
              list("Chat Counters", Icons.menu_sharp),
              Divider(
                height: 5,
                color: Colors.black45,
              ),
              ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.black45,
                  ),
                  title: Text(
                    "LogOut",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  onTap: () {
                    _showAndroid();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
