import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 35.0,top: 20.0),
            child: Text("A",style: TextStyle(
              fontSize: 25.0,
              color: Colors.grey,
            ),),
          ),
      ListTile(
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.blue,
      ),
      title: Text("Abhishek"),
      subtitle: Text("India"),
      trailing: IconButton(
      icon: Icon(Icons.message,color: Colors.grey,),
      onPressed: null
      ),
      ),
      ListTile(
      leading: CircleAvatar(
      radius: 28,
      backgroundColor: Colors.blue,
      ),
      title: Text("Aditya"),
      subtitle: Text("India"),
      trailing: IconButton(
      icon: Icon(Icons.message,color: Colors.grey,),
      onPressed: null
      ),
      ),
      ListTile(
      leading: CircleAvatar(
      radius: 28,
      backgroundColor: Colors.blue,
      ),
      title: Text("Anirudh"),
      subtitle: Text("India"),
      trailing: IconButton(
      icon: Icon(Icons.message,color: Colors.grey,),
      onPressed: null
      ),
      ),

          Container(
            margin: EdgeInsets.only(left: 35.0,top: 20.0),
            child: Text("B",style: TextStyle(
              fontSize: 25.0,
              color: Colors.grey,
            ),),
          ),

      ListTile(
      leading: CircleAvatar(
      radius: 28,
      backgroundColor: Colors.blue,
      ),
      title: Text("Ben"),
      subtitle: Text("India"),
      trailing: IconButton(
      icon: Icon(Icons.message,color: Colors.grey,),
      onPressed: null
      ),
      ),

          Container(
            margin: EdgeInsets.only(left: 35.0,top: 20.0),
            child: Text("C",style: TextStyle(
              fontSize: 25.0,
              color: Colors.grey,
            ),),
          ),

      ListTile(
      leading: CircleAvatar(
      radius: 28,
      backgroundColor: Colors.blue,
      ),
      title: Text("Ceria"),
      subtitle: Text("India"),
      trailing: IconButton(
      icon: Icon(Icons.message,color: Colors.grey,),
      onPressed: null
      ),
      ),

      ListTile(
      leading: CircleAvatar(
      radius: 28,
      backgroundColor: Colors.blue,
      ),
      title: Text("Cymica"),
      subtitle: Text("India"),
      trailing: IconButton(
      icon: Icon(Icons.message,color: Colors.grey,),
      onPressed: null
      ),
      ),

          Container(
            margin: EdgeInsets.only(left: 35.0,top: 20.0),
            child: Text("D",style: TextStyle(
              fontSize: 25.0,
              color: Colors.grey,
            ),),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.blue,
            ),
            title: Text("Deepesh"),
            subtitle: Text("India"),
            trailing: IconButton(
                icon: Icon(Icons.message,color: Colors.grey,),
                onPressed: null
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.blue,
            ),
            title: Text("Dheeraj"),
            subtitle: Text("India"),
            trailing: IconButton(
                icon: Icon(Icons.message,color: Colors.grey,),
                onPressed: null
            ),
          ),

        ],
      ),
    );

  }

}
