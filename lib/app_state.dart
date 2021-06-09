import 'package:flutter/material.dart';
import 'package:navigator/router/ui_pages.dart';

const String LoggedInKey = 'LoggedIn';

enum PageState{
none,
addPage,
addAll,
addWidget,
pop,
replace,
replaceAll,
}

class PageAction {
  PageState state;
  PageConfiguration? page;
  List<PageConfiguration>? pages;
  Widget? widget;

  PageAction({this.state = PageState.none, this.page, this.pages, this.widget});
}

class AppState extends ChangeNotifier{

  PageAction _currentAction = PageAction();
  PageAction get currentAction => _currentAction;
  set currentAction(PageAction action) {
    _currentAction = action;
    notifyListeners();
  }

  AppState(){
    
  }

  void resetCurrentAction() {
    _currentAction = PageAction();
  }

  
}
