import 'package:flutter/material.dart';
import 'package:gallery_app/config/routes/router.dart';
import 'package:gallery_app/features/models/bottom_appbar.dart';
import 'package:gallery_app/features/models/container_model.dart';
import 'package:gallery_app/features/models/row_column.dart';
import 'package:gallery_app/features/models/stack_align.dart';
import 'features/provider/cupertino_slider_provider.dart';
import 'features/models/cupertino_form.dart';
import 'features/models/cupertino_switch.dart';
import 'package:provider/provider.dart';

import 'features/screens/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CupertinoSliderProvider()),
        ChangeNotifierProvider(create: (_) => CupertinoSwitchModel()),
        ChangeNotifierProvider(create: (_) => CupertinoFormModel()),
        ChangeNotifierProvider(create: (_) => RowColumnModel()),
        ChangeNotifierProvider(create: (_) => StackAlignModel()),
        ChangeNotifierProvider(create: (_) => ContainerModel()),
        ChangeNotifierProvider(create: (_) => BottomAppbarModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      initialRoute: "/",
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
