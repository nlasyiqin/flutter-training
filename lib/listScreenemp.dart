import 'package:flutter/material.dart';

class listExample extends StatelessWidget {
  const listExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Forms'), 
        centerTitle: true,
        ),
      body: Container(
        child: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Location'),
            ),
          ],
        ),
      ),);
  }
}