import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_clone/mail.dart';
import 'package:youtube_clone/trending.dart';

import 'library.dart';
import 'main.dart';

class subscription extends StatefulWidget {
  @override
  _subscriptionState createState() => _subscriptionState();
}

class _subscriptionState extends State<subscription> {

  int _selectedIndex = 2;

  final List<Widget> _children = [
    trending(),
    subscription(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffEBF2F2),
        title: Row(
          children: [
            Image.asset(
              "assets/logo.png",
              height: 50,
              width: 50,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "YouTube",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 29,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(
                FontAwesomeIcons.video,
                color: Colors.black45,
                size: 20,
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                FontAwesomeIcons.search,
                color: Colors.black45,
                size: 20,
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                FontAwesomeIcons.user,
                color: Colors.black45,
                size: 20,
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        onTap: _onItemTapped,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.red),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Home()));
              },
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(FontAwesomeIcons.home)),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => trending()));
                },
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(FontAwesomeIcons.fire)),
              ),
              label: "Trending"),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => subscription()));
                },
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.video_collection_rounded)),
              ),
              label: "Subscription"),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => mail()));
                },
                child: Padding(
                    padding: EdgeInsets.all(8), child: Icon(Icons.mail)),
              ),
              label: "Inbox"),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => folder()));
                },
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(FontAwesomeIcons.folder)),
              ),
              label: "Library"),
        ],
      ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            tile("https://randomuser.me/api/portraits/women/79.jpg","Flutter"),
            Divider(height:20,),
            tile("https://randomuser.me/api/portraits/women/44.jpg","Devs"),
            Divider(height: 20,),
            tile("https://randomuser.me/api/portraits/women/17.jpg","JooKAte"),
            Divider(height: 20,),
            tile("https://randomuser.me/api/portraits/women/20.jpg","Sandy"),
            Divider(height: 20,),
            tile("https://randomuser.me/api/portraits/women/21.jpg","Bhai Code"),
            Divider(height: 20,),
            tile("https://randomuser.me/api/portraits/women/22.jpg","DankCode"),
            Divider(height: 20,),
            tile("https://randomuser.me/api/portraits/women/40.jpg","Devloper Buddy"),
            Divider(height: 20,),
            tile("https://randomuser.me/api/portraits/women/22.jpg","Null Coder"),
            Divider(height: 20,),

          ],
        )
    );
  }
}

ListTile tile(String imgurl,String cmt) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(imgurl),
      radius: 30,
    ),
    title: Padding(
      padding: EdgeInsets.only(right: 5),
      child: Text(cmt),
    ),
  );
}
