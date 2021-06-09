import 'package:flutter/material.dart';
import 'package:navigator/router/ui_pages.dart';
import 'package:provider/provider.dart';
import 'package:navigator/app_state.dart';


class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);
    return Container(
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: 100,
            child: MaterialButton(
              onPressed: (){
              appState.currentAction = PageAction(state: PageState.addPage,page: AnalyticsConfig);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("Analytics"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: 100,
            child: MaterialButton(
              onPressed: (){
                appState.currentAction = PageAction(state: PageState.addPage,page: OrdersConfig);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("Orders"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: 100,
            child: MaterialButton(
              onPressed: (){
                appState.currentAction = PageAction(state: PageState.addPage,page: ProfileConfig);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("Profile"),
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
              child: const Text("Export"),
            ),
          ),
        ],
      ),
    );
  }
}