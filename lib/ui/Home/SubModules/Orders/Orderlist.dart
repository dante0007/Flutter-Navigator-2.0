import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders'),
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
                child: const Text("Details"),
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