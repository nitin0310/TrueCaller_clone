import 'package:flutter/material.dart';
import 'package:truecaller_clone/Detailclass.dart';

class Calls extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CallsState();
  }
}

class CallsState extends State<Calls>{

  List<Detailclass> list=[
    Detailclass("Vipin", 12),
    Detailclass("Sameer", 1),
    Detailclass("Rahul", 5),
    Detailclass("Varun", 8),
    Detailclass("Yuvraj", 9),
    Detailclass("Rithik", 11),
    Detailclass("Yash Gupta", 12),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          height: 130.0,
          child: ListView.builder(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
              return Container(
                margin: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 28.0,
                      backgroundColor: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: Text(list[index].name,style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),),
                    ),

                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.lightGreenAccent,
                            radius: 3.0,
                          ),
                        ),
                        Text("Mobile",style: TextStyle(
                            color: Colors.grey
                        ),)
                      ],
                    )

                  ],
                ),
              );
            },
          ),
        ),
        Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context,int index){
              return Container(
                margin: EdgeInsets.only(top: 12,bottom: 10,left: 5.0),
                height: 200.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(left: 10.0),
                      child: Text("Yesterday",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          fontSize: 16
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 28.0,
                          backgroundColor: Colors.red,
                        ),
                        title: Text(list[index].name,style: TextStyle(
                            fontSize: 20.0
                        ),),
                        subtitle: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.keyboard_arrow_left,color: Colors.lightGreen,),
                                Text("17:56 "),
                                Text("Mobile"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 5.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.lightGreenAccent,
                                    radius: 3.0,
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 5.0),
                                    child: Text("Last seen")),

                                Container(
                                    margin: EdgeInsets.only(left: 5.0),
                                    child: Text("8:50")
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}