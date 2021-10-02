import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/bottom_nav_provider.dart';
import './shared_widgets/bottom_nav.dart';
import './utlis/mytheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavigationBarProvider>(
      create: (context) => BottomNavigationBarProvider(),
      child: MaterialApp(
        theme: MyTheme().defaultTheme,
        home: const BottomNav(),
      ),
    );
  }
}
