import 'package:flutter/material.dart';

import '../../home/ui/HomeScreen.dart';
import '../../navigation/NavigationMap.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
      routes: NavigationMap.getRoutes(),
    );
  }
}
