import 'package:flutter/material.dart';
import 'package:truecaller_clone/MessagesTabs/Others.dart';
import 'package:truecaller_clone/MessagesTabs/Personal.dart';
import 'package:truecaller_clone/MessagesTabs/Spam.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
       length: 3,
       child: Scaffold(
         appBar: TabBar(
           tabs: <Widget>[

             Tab(
               child: Text("PERSONAL",style: TextStyle(
                 color: Colors.blue
               ),),
             ),
             Tab(
               child: Text("OTHERS",style: TextStyle(
                   color: Colors.blue
               ),),
             ),
             Tab(
               child: Text("SPAM",style: TextStyle(
                   color: Colors.blue
               ),),
             )
           ],
         ),
         body: TabBarView(
           children: <Widget>[
             Personal(),
             Others(),
             Spam(),
           ],
         ),
       )

      );
  }
}
