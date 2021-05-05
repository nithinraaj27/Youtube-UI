import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_clone/details.dart';
import 'package:youtube_clone/main.dart';
import 'package:youtube_clone/subscription.dart';
import 'package:youtube_clone/trendingclass.dart';

import 'library.dart';
import 'mail.dart';

class trending extends StatefulWidget {
  @override
  _trendingState createState() => _trendingState();
}

class _trendingState extends State<trending> {

  int _selectedIndex = 1;

  final List<Widget> _children = [
    trending(),
    subscription(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  // ignore: deprecated_member_use
  List<trendingclass> trends = new List();

  @override
  void initState() {
    trends = getTrend();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              //SizedBox(height: 2),
              Container(
                color: Color(0xffEBF2F2),
                height: 75,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff404646),
                              child: Icon(Icons.music_note,color: Colors.white,),
                            ),
                            Text("Music",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),)
                          ],
                        )
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff404646),
                              child: Icon(Icons.live_tv,color: Colors.white,),
                            ),
                            Text("Live",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),)
                          ],
                        )
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff404646),
                              child: Icon(Icons.videogame_asset,color: Colors.white,),
                            ),
                            Text("Gaming",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),)
                          ],
                        )
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff404646),
                              child: Icon(Icons.insert_drive_file,color: Colors.white,),
                            ),
                            Text("News",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),)
                          ],
                        )
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff404646),
                              child: Icon(Icons.local_movies,color: Colors.white,),
                            ),
                            Text("Flims",style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),)
                          ],
                        )
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height-50,
                child: ListView.builder(
                    itemCount: trends.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index){
                      return trendingslids(
                        imgurl: trends[index].imgurl,
                        name1: trends[index].name1,
                        name2: trends[index].name2,
                        views: trends[index].views,
                        dur: trends[index].dur,
                        userimg: trends[index].userimg,
                        tuber: trends[index].tuber,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class trendingslids extends StatelessWidget {


  final String imgurl;
  final String name1;
  final String name2;
  final String views;
  final String dur;
  final String userimg;
  final String tuber;

  const trendingslids({this.imgurl, this.name1, this.name2, this.views, this.dur, this.userimg, this.tuber});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEBF2F2),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(offset: Offset(0.1, 0.1))]),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //margin: EdgeInsets.all(5),
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    imgurl,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                      height: 50,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            userimg
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name1,
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          name2,
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Text(
                              "$tuber   .",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15),
                            ),
                            Text(
                              "  $views  .",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15),
                            ),
                            Text(
                              "  $dur ",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
