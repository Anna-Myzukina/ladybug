import 'package:ladybug/screens/add_activity_screen.dart';
import 'package:ladybug/screens/settings_screen.dart';
import 'package:ladybug/screens/track_screen.dart';
import 'package:ladybug/screens/user_screen.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFFfbfcfe),
        shadowColor: const Color(0xFFf6f7f9),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color.fromARGB(177, 96, 125, 139),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.autorenew),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
      body: <Widget>[
        TrackScreen(),
        const AddActivityScreen(),
        const UserScreen(),
        const SettingsScreen(),
      ][currentPageIndex],
    );
  }
}

