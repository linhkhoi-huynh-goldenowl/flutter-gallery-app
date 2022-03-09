import 'package:flutter/material.dart';

import '../../modules/dashboard/screens/cupertino_widget/cupertino_screen.dart';
import '../../modules/dashboard/screens/home_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/CupertinoScreen':
        return MaterialPageRoute(builder: (_) => const CupertinoScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
