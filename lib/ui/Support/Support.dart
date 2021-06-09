import 'package:flutter/material.dart';
import 'package:navigator/router/ui_pages.dart';
import 'package:provider/provider.dart';
import 'package:navigator/app_state.dart';

class Support extends StatelessWidget {
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
              appState.currentAction = PageAction(state: PageState.addPage,page: TermsConfig);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("Terms"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: 100,
            child: MaterialButton(
              onPressed: (){
                appState.currentAction = PageAction(state: PageState.addPage,page: PolicyConfig);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("Privacy"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: 100,
            child: MaterialButton(
              onPressed: (){
              appState.currentAction = PageAction(state: PageState.addPage,page: AboutsUsConfig);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("Aboout Us"),
            ),
          ),
        ],
      ),
    );
  }
}
