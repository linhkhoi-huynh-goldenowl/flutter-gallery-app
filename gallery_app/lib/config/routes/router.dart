import 'package:flutter/material.dart';
import 'package:gallery_app/features/screens/cupertino_widget/cupertino_screen.dart';
import 'package:gallery_app/features/screens/home_screen.dart';
import 'package:gallery_app/features/screens/rich_text_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/CupertinoScreen':
        return MaterialPageRoute(builder: (_) => const CupertinoScreen());
      case '/RichTextScreen':
        return MaterialPageRoute(builder: (_) => const RichTextScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
