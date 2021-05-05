import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_clone/details.dart';
import 'package:youtube_clone/recenttile.dart';
import 'package:youtube_clone/subscription.dart';
import 'package:youtube_clone/trending.dart';

import 'mail.dart';
import 'main.dart';

class folder extends StatefulWidget {
  @override
  _folderState createState() => _folderState();
}

class _folderState extends State<folder> {
  // ignore: deprecated_member_use
  List<recenttile> rec = new List();
  @override
  void initState() {
    rec = getRecent();
    super.initState();
  }

  int _selectedIndex = 4;
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
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => subscription()));
                },
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.video_collection_rounded)),
              ),
              label: "Subscription"),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => mail()));
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              alignment: Alignment.centerLeft,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffF4F7F7),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 0.1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Recent",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 160,
              child: ListView.builder(
                  itemCount: rec.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return smaltile(
                      imgurl: rec[index].imgurl,
                      title1: rec[index].title1,
                      title2: rec[index].title2,
                    );
                  }),
            ),
            Divider(
              height: 25,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 350,
              decoration: BoxDecoration(
                  color: Color(0xffF4F7F7),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 0.1)),
              child: Column(
                children: [
                  threetile("History", Icons.history),
                  SizedBox(
                    height: 10,
                  ),
                  threetile("My Videos", Icons.video_collection_sharp),
                  SizedBox(
                    height: 10,
                  ),
                  threetile("Watch Later", FontAwesomeIcons.clock),
                  SizedBox(
                    height: 10,
                  ),
                  threetile("Downloads", Icons.arrow_downward),
                  SizedBox(
                    height: 10,
                  ),
                  threetile("Your Moviees", Icons.local_movies_outlined),
                ],
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffF4F7F7),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 0.1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Available Offline",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  twotile("Downloads",FontAwesomeIcons.download),
                  SizedBox(height: 10,),
                  twotile("Liked Videos",FontAwesomeIcons.thumbsUp),
                  SizedBox(height: 10,),
                  twotile("My PlayList",Icons.local_movies_sharp),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ListTile twotile(String name,IconData ic) {
    return ListTile(
      leading: Icon(
        ic,
        size: 30,
        color: Colors.grey[700],
      ),
      title: Text(
        name,
        style: TextStyle(
            fontSize: 20, color: Colors.grey[700], fontWeight: FontWeight.w600),
      ),
    );
  }

  ListTile threetile(String name, IconData ic) {
    return ListTile(
      leading: Icon(
        ic,
        size: 30,
        color: Colors.grey[700],
      ),
      title: Text(
        name,
        style: TextStyle(
            fontSize: 20, color: Colors.grey[700], fontWeight: FontWeight.w600),
      ),
    );
  }
}

class smaltile extends StatelessWidget {
  final String imgurl;
  final String title1;
  final String title2;

  const smaltile({this.imgurl, this.title1, this.title2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 160,
      width: 210,
      color: Color(0xffD9DDDD),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 210,
            child: Image.asset(
              imgurl,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    title1,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  Text(
                    title2,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.more_vert,
                size: 25,
              )
            ],
          )
        ],
      ),
    );
  }
}
