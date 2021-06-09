import 'package:flutter/material.dart';
import 'package:navigator/router/ui_pages.dart';
import 'package:provider/provider.dart';
import 'package:navigator/app_state.dart';


class MenuDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Details'),
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
                  appState.currentAction = PageAction(state: PageState.addPage, page: AddItemsConfig);
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text("Add Item"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              width: 100,
              child: MaterialButton(
                onPressed: (){
                  appState.currentAction = PageAction(state: PageState.addPage,page: UpdateItemsConfig);
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text("Update Item"),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}