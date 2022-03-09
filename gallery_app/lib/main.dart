import 'package:flutter/material.dart';
import 'package:gallery_app/config/routes/router.dart';
import 'package:gallery_app/modules/dashboard/provider/cupertino_slider_provider.dart';
import 'package:gallery_app/modules/models/cupertino_form.dart';
import 'package:gallery_app/modules/models/cupertino_switch.dart';
import 'package:provider/provider.dart';

import 'modules/dashboard/screens/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CupertinoSliderProvider()),
        ChangeNotifierProvider(create: (_) => CupertinoSwitchModel()),
        ChangeNotifierProvider(create: (_) => CupertinoFormModel()),
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
