import 'package:flutter/material.dart';

class UpiPage extends StatefulWidget {
  @override
  _UpiPageState createState() => _UpiPageState();
}

class _UpiPageState extends State<UpiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0.0,
            title: Text("truecaller Pay",style: TextStyle(
              color: Colors.white
            ),),
          ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 360.0,
              color: Colors.blue,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("We'll send an sms from your SIM to verify your\n"+
                    "   bank account.Normal SMS charges apply."
                  ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: (){},
              color: Colors.green,
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 85.0,right: 85.0,top: 12.0,bottom: 12.0),
                child: Text("GET STARTED",style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("By continuing,I accept the following",style: TextStyle(
                  fontSize: 9.0
                ),),
                FlatButton(
                  child: Text("Terms and conditions",style: TextStyle(
                    fontSize: 9.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),),
                  onPressed: (){},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
