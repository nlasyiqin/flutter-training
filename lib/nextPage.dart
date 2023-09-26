import 'package:flutter/material.dart';

class secondScreen extends StatelessWidget {
  const secondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back, color: Colors.black)),
            Container(
              child: Text('Testing')
          
            ),
          ],
        ),
      ),
    );
  }
}