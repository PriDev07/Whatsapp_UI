import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/community.dart';
import 'package:whatsapp_ui/homescreen.dart';
import 'package:whatsapp_ui/updates.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> with TickerProviderStateMixin {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 70,
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Color.fromARGB(255, 180, 244, 203),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.chat),
            icon: Icon(Icons.chat_outlined),
            label: 'Chats',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.update_rounded),
            icon: Icon(Icons.update_outlined),
            label: 'Updates',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.groups_3),
            icon: Icon(Icons.groups_3_outlined),
            label: 'Communities',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.call),
            icon: Icon(Icons.call_outlined),
            label: 'Calls',
          ),
        ],
      ),
      body: <Widget>[
        HomeScreen(),
        UpdateScreen(),
        Community(),
        Calls(),
      ][currentPageIndex],
    );
  }
}
