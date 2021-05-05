import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          tile("https://randomuser.me/api/portraits/women/79.jpg","Good Work, Keep Doing man"),
          Divider(height:20,),
          tile("https://randomuser.me/api/portraits/women/44.jpg","I am a big fan of u"),
          Divider(height: 20,),
          tile("https://randomuser.me/api/portraits/women/17.jpg","Great Work, Hats Off"),
          Divider(height: 20,),
          tile("https://randomuser.me/api/portraits/women/20.jpg","What a work Dood"),
          Divider(height: 20,),
          tile("https://randomuser.me/api/portraits/women/21.jpg","You are a God to me"),
          Divider(height: 20,),
          tile("https://randomuser.me/api/portraits/women/22.jpg","Thank you for saving me"),
          Divider(height: 20,),
          tile("https://randomuser.me/api/portraits/women/40.jpg","love ur works dude"),
          Divider(height: 20,),
          tile("https://randomuser.me/api/portraits/women/22.jpg","What a MAn ,What A work"),
          Divider(height: 20,),

        ],
      )
    );
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
}
