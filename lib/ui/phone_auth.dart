import 'package:flutter/material.dart';
import 'package:navigator/app_state.dart';
import 'package:navigator/router/ui_pages.dart';
import 'package:provider/provider.dart';

class PhoneAuth extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
     final appState = Provider.of<AppState>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhoneAuth'),
      ),
      body: Container(
        child: Center(
          child: MaterialButton(
            onPressed: (){
              appState.currentAction = PageAction(state: PageState.replaceAll,page: LayoutConfig);
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: Text("Next"),
          ),
        ),
      ),
    );
  }
}