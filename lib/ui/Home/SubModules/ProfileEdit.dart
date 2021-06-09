import 'package:flutter/material.dart';

class ProfileEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Edit'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: 100,
            child: MaterialButton(
              onPressed: (){

              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("Back"),
            ),
          ),
          ],
        ),
      ),
    );
  }
}