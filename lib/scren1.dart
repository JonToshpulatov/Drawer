import 'package:flutter/material.dart';
class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}
class List{
  list(String a, String b) {
    return ListTile(
        leading:
        CircleAvatar(
          radius: 20.0,
          child: ClipRRect(
            child: Image.asset(a),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),

        title: Text(
          b,
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        onTap: () {});
  }
  divider(){
    return
      Divider(
        height: 5,
        color: Colors.black12,
      );
  }
}
class _PersonState extends State<Person> {
  @override

  Widget build(BuildContext context) {
    final Account=List();
    return Scaffold(
      body:
      ListView(
        children: [
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),
          Account.list( "assets/1.jpg","Yusuf"),
          Account.divider(),

        ],
      ),
    );

  }
}
