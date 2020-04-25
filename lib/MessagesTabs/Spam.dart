import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Spam extends StatefulWidget {
  @override
  _SpamState createState() => _SpamState();
}

class _SpamState extends State<Spam> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          Container(
            margin: EdgeInsets.only(top: 20.0,right: 10.0),
            height: 90.0,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("18/12/2019",style: TextStyle(
                      color: Colors.grey
                    ),)
                  ],
                ),

                Row(

                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(left: 10.0),
                      child: CircleAvatar(
                        radius: 28.0,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Spam",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0
                          ),),
                          Text("Congratulations,you are selected for kbc.",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),),
                          Text("14 spam reports",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                            color: Colors.red,
                          ),),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
