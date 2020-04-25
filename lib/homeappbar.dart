import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeAppBarState();
  }
}

class HomeAppBarState extends State<HomeAppBar>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 5.0,),
      height: 45.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Colors.blueAccent,
          boxShadow: [
            BoxShadow(
                blurRadius: 1.0
            )
          ]
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){

            },
          ),
          Row(

            children: <Widget>[
              Text("truecaller ",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0
              ),),
              Text("search",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0
              ),)
            ],
          ),


          Container(
            margin: EdgeInsets.only(left: 160.0),
            child: IconButton(icon: Icon(Icons.more_vert),
                onPressed: (){

                }
            ),
          )
        ],
      ),
    );
  }
}