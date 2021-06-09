import 'package:flutter/material.dart';
import 'package:navigator/router/ui_pages.dart';
import 'package:provider/provider.dart';
import 'package:navigator/app_state.dart';

class MenuList extends StatelessWidget {
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
              appState.currentAction = PageAction(state: PageState.addPage,page: MenuDetailsConfig);
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
                appState.currentAction = PageAction(state: PageState.addPage,page: AddMenuConfig);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("ADD Category"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: 100,
            child: MaterialButton(
              onPressed: (){
              appState.currentAction = PageAction(state: PageState.addPage,page: UpdateMenuConfig);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("Update"),
            ),
          ),
          ],
        ),
      );
  }
}