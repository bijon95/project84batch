import 'package:flutter/material.dart';

class DRAWER extends StatefulWidget {
  const DRAWER({Key? key}) : super(key: key);

  @override
  _DRAWERState createState() => _DRAWERState();
}

class _DRAWERState extends State<DRAWER> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("MENU"),
      ),
      drawer: Drawer(

        child: Container(
    //color: Colors.red,
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Profile'),

              ),
              ListTile(
                leading: Icon(Icons.add_shopping_cart),
                title: Text('My Orders'),
              ),
              ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('Favorites'),
              ),
              ListTile(
                leading: Icon(Icons.local_shipping),
                title: Text('Delivery'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sign out'),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
