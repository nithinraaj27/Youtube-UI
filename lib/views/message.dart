import 'package:flutter/material.dart';

class message extends StatefulWidget {
  @override
  _messageState createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xffF4F7F7),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
              border: Border.all(width: 0.1)
            ),
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("FRIENDS",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w800,
                    fontSize: 20
                  ),
                ),
                Text("NEW GROUP",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w800,
                      fontSize: 20
                  ),
                ),
              ],
            ),
          ),
          Container(
            child:Stack(
              children: [
                Image.asset("assets/peoples.png",height: 500,width: 500,),
                Padding(
                    padding: EdgeInsets.only(top: 420,left: 40),
                    child: Text("Get started by adding friends",style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w800
                    ),)
                ),
                Padding(
                    padding:EdgeInsets.only(top: 460,left: 100),
                    child: Text("Your chat will show Up here",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    ),)
                ),
                Container(
                  height: 37,
                  width: 160,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 500,left: 140),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text("ADD FRIENDS",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                  ),),
                )
              ],
            )
          ),
        ],
      )
    );
  }
}
