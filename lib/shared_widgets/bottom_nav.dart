import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_spot/utlis/mycolors.dart';

import '../providers/bottom_nav_provider.dart';
import '../screens/calculator_services.dart';
import '../screens/devices_list.dart';
import '../screens/home.dart';
import '../screens/settings.dart';

class BottomNav extends StatefulWidget {
  const BottomNav();

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  // Declare the main values of nav
  List<StatelessWidget> currentTab = const [
    HomePage(),
    CalculaterServices(),
    DevciesList(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    // Declare the main state
    final navState = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      body: currentTab[navState.currentIndex],
      // UI of Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Mycolors.lightUnusedNavItem,
        backgroundColor: Mycolors.primaryColor,
        currentIndex: navState.currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          navState.currentIndex = index;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: "Calculator",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_device_information_rounded),
            label: "Devices",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
