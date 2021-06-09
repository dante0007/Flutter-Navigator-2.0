import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                child: const Text("Profile Edit"),
              ),
            ),
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
      ),
    );
  }
}