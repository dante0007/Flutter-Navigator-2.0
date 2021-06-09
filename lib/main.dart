// import 'dart:async';
import 'package:provider/provider.dart';
// import 'package:uni_links/uni_links.dart';
import 'package:flutter/material.dart';
import 'package:navigator/app_state.dart';
import 'package:navigator/router/back_dispatcher.dart';
import 'package:navigator/router/router_delegate.dart';
import 'package:navigator/router/router_parser.dart';
import 'package:navigator/router/ui_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appState = AppState();
  NavigationRouterDelegate? delegate;
  final praser = NavigatorParser();
  NavigatorBackButtonDispatcher? backButtonDispatcher;

  // StreamSubscription? _linkSubscription;

  _MyAppState(){
    delegate = NavigationRouterDelegate(appState);
    delegate?.setNewRoutePath(PhoneAuthConfig);
    backButtonDispatcher = NavigatorBackButtonDispatcher(delegate!);
  }

  // @override 
  // void dispose() {
  //   if (_linkSubscription != null) _linkSubscription!.cancel();
  //   super.dispose();
  // }

  //  Future<void> initPlatformState() async {
  //   // Attach a listener to the Uri links stream
  //   _linkSubscription = getUriLinksStream().listen((Uri uri) {
  //     if (!mounted) return;
  //     setState(() {
  //       delegate!.parseRoute(uri);
  //     });
  //   }, onError: (Object err) {
  //     print('Got error $err');
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
      create: (_)=> appState,
      child: MaterialApp.router(
        title: 'Navigation App',
        debugShowCheckedModeBanner: false,
        routeInformationParser: praser, 
        routerDelegate: delegate!,
        backButtonDispatcher: backButtonDispatcher,
      ),
    );
    // MaterialApp(
    //   title: 'Navigation App',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
      
    // );
  }
}

