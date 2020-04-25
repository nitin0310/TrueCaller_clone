import 'package:flutter/material.dart';
import 'package:truecaller_clone/ContactTabs/Saved.dart';
import 'package:truecaller_clone/MessagesTabs/Spam.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 2,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Colors.blue,
          tabs: <Widget>[
            Tab(
              text: "SAVED",
            ),
            Tab(
              text: "IDENTIFIED",
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Saved(),
            Spam()
          ],
        ),
      ),
    );
  }
}
