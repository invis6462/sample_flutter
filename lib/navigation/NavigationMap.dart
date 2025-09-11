import 'package:flutter/cupertino.dart';

import '../home/ui/HomeScreen.dart';
import 'NavigationEnum.dart';

class NavigationMap {
  static Map<String, WidgetBuilder> getRoutes() => {
    NavigationEnum.home.path: (context) => const HomeScreen(),
  };
}
