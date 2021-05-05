import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_clone/subscription.dart';
import 'package:youtube_clone/trending.dart';
import 'package:youtube_clone/views/message.dart';
import 'package:youtube_clone/views/notification.dart';

import 'library.dart';
import 'main.dart';

class mail extends StatefulWidget {
  @override
  _mailState createState() => _mailState();
}

class _mailState extends State<mail>  with SingleTickerProviderStateMixin{

  TabController _tabcontroller;
  int _selectedIndex = 3;


  @override
  void initState() {
    _tabcontroller = new TabController(length: 2, vsync: this, initialIndex: 1)..addListener(() {
      setState(() {

      });
    });
    super.initState();
  }

  final List<Widget> _children = [
    trending(),
    subscription(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget x = Container(
    child: Center(
      child: Text("Messages"),
    ),
  );

  Widget y = Container(
    child: Center(
      child: Text("Notification"),
    ),
  );

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
        bottom: TabBar(
          indicatorColor: Colors.red,
          controller: _tabcontroller,
          labelColor: Colors.black,
          tabs: [
            Tab(text: 'Messages',),
            Tab(text: 'Notification',)
          ],
        ),
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
      body: TabBarView(
          controller: _tabcontroller,
          children: <Widget>[
            message(),
            notification()
          ]
      ),
    );
  }
}

