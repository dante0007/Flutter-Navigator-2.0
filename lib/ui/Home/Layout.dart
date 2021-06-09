import 'package:flutter/material.dart';
import 'package:navigator/ui/Home/HomeScreen.dart';
import 'package:navigator/ui/Menu/MenuLIst.dart';
import 'package:navigator/ui/Preview.dart';
import 'package:navigator/ui/Support/Support.dart';

class Layout extends StatefulWidget {
  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final List<Widget> views = [
    HomeScreen(),
    MenuList(),
    Preview(),
    Support(),
  ];

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: this.views[this.currentindex],
          ),
          Divider(
            height: 0.5,
          )
        ],
      ),
         bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentindex,
        onTap: (index){
          this.setState(() {
            this.currentindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        enableFeedback: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmarks_outlined
            ),
            activeIcon: Icon(
              Icons.bookmarks_rounded
            ),
            label: 'Orders'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book_rounded
            ),
            label: 'Menu'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store_rounded
            ),
            label: 'Preview'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store_rounded
            ),
            label: 'Support'
          )
        ],
      ),
    );
  }
}
