import 'package:flutter/material.dart';
import 'package:truecaller_clone/Calls.dart';
import 'package:truecaller_clone/ContactsPage.dart';
import 'package:truecaller_clone/Detailclass.dart';
import 'package:truecaller_clone/MessagesPage.dart';
import 'package:truecaller_clone/MessagesTabs/Personal.dart';
import 'package:truecaller_clone/MessagesTabs/Spam.dart';
import 'package:truecaller_clone/homeappbar.dart';
import 'package:truecaller_clone/payments.dart';
import 'package:truecaller_clone/upiPage.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{

  int _currentIndex=2;

  List<Detailclass> list=[
    Detailclass("Vipin", 12),
    Detailclass("Sameer", 1),
    Detailclass("Rahul", 5),
    Detailclass("Varun", 8),
    Detailclass("Yuvraj", 9),
    Detailclass("Rithik", 11),
    Detailclass("Yash Gupta", 12),
  ];

  List<Widget> bottomPages=[
    MessagesPage(),
    ContactPage(),
    Calls(),
    UpiPage(),
    PaymentPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: HomeAppBar()
        ),

        bottomNavigationBar:Container(
          height: 85.0,color: Colors.green,
          child: BottomNavigationBar(
            elevation: 10.0,
            currentIndex: _currentIndex,
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.sms,color: Colors.grey,size: 25,),
                title: Text("Messages",style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey
                ),),
                activeIcon: Icon(Icons.sms,color: Colors.blue,size: 25,),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle,color: Colors.grey,size: 25),
                  title: Text("Contacts",style: TextStyle(color: Colors.grey,fontSize: 13,),),
                  activeIcon: Icon(Icons.account_circle,color: Colors.blue,size: 25,)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.call,color: Colors.grey,size: 30),
                  title: Text("Calls",style: TextStyle(color: Colors.grey,fontSize: 9,),),
                  activeIcon: FloatingActionButton(
                    child: Icon(Icons.dialpad,color: Colors.white,),
                    backgroundColor: Colors.blue,
                    elevation: 4.0,
                    onPressed: (){},
                  )
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.monetization_on,color: Colors.grey,size: 25),
                  title: Text("UPI",style: TextStyle(color: Colors.grey,fontSize: 13,),),
                  activeIcon: Icon(Icons.monetization_on,color: Colors.blue,size: 25,)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.receipt,color: Colors.grey,size: 25),
                  title: Text("Payments",style: TextStyle(color: Colors.grey,fontSize: 13,),),
                  activeIcon: Icon(Icons.receipt,color: Colors.blue,size: 25,)
              )
            ],
          ),
        ),
        body: bottomPages[_currentIndex]
      ),
    );
  }

  void onTabTapped(index) {
    setState(() {
      _currentIndex=index;
    });
  }
}