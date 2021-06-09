import 'package:flutter/material.dart';
import 'package:navigator/router/router_delegate.dart';

class NavigatorBackButtonDispatcher extends RootBackButtonDispatcher {
  final NavigationRouterDelegate _routerDelegate;

  NavigatorBackButtonDispatcher(this._routerDelegate): super();

  @override 
  Future<bool> didPopRoute(){
    return _routerDelegate.popRoute();
  }
  
}