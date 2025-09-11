import 'package:flutter/cupertino.dart';

import '../home/ui/HomeScreen.dart';
import '../new/ui/NewScreen.dart';
import 'RouteEnum.dart';

class NavigationMap {
  static Map<String, WidgetBuilder> getRoutes() => {
    RouteEnum.homeScreen.path: (context) => const HomeScreen(),
    RouteEnum.newScreen.path: (context) => const NewScreen(),
  };
}
