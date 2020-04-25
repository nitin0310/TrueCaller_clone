import 'package:flutter/material.dart';
import 'package:truecaller_clone/Detailclass.dart';
import 'PersonalList.dart';

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {

  List<Detailclass> list=[
    Detailclass("Vipin", 12),
    Detailclass("Sameer", 1),
    Detailclass("Rahul", 5),
    Detailclass("Varun", 8),
    Detailclass("Yuvraj", 9),
    Detailclass("Rithik", 11),
    Detailclass("Yash Gupta", 12),
  ];

  List<PersonalList> list2=[
    PersonalList("Hii bro"),
    PersonalList("I want to meet you"),
    PersonalList("What are you doing?"),
    PersonalList("Shall we go somewhere?"),
    PersonalList("I want to pay you for your application.Tell me"),
    PersonalList("I am a parmish verma fan"),
    PersonalList("Tommorow is holiday."),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context,int index){
        return Container(
          height: 75.0,
          margin: EdgeInsets.only(left: 5.0,top: 5.0,bottom: 5.0),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10.0,),
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor:Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.0,left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(left: 230.0),
                            child: Text("25/12/2019",style: TextStyle(
                              color: Colors.grey
                            ),)
                        )
                      ],
                    ),
                    Text(list[index].name,style: TextStyle(
                      fontSize: 18.0,
                    ),),

                    Container(
                      margin: EdgeInsets.only(top: 2.0),
                      child: Text(list2[index].msg,style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
