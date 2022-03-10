import 'package:flutter/material.dart';
import 'package:gallery_app/features/screens/container_screen.dart';
import 'package:gallery_app/features/screens/cupertino_widget/cupertino_screen.dart';
import 'package:gallery_app/features/screens/home_screen.dart';
import 'package:gallery_app/features/screens/rich_text_screen.dart';
import 'package:gallery_app/features/screens/row_column_screen.dart';
import 'package:gallery_app/features/screens/stack_align_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/CupertinoScreen':
        return MaterialPageRoute(builder: (_) => const CupertinoScreen());
      case '/RichTextScreen':
        return MaterialPageRoute(builder: (_) => const RichTextScreen());
      case '/RowColumnScreen':
        return MaterialPageRoute(builder: (_) => const RowColumnScreen());
      case '/StackAlignScreen':
        return MaterialPageRoute(builder: (_) => const StackAlignScreen());
      case '/ContainerScreen':
        return MaterialPageRoute(builder: (_) => const ContainerScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
