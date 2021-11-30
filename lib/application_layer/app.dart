import 'package:flutter/material.dart';
import 'package:udemy_course_mvvm/presentation_layer/resources/route_manager.dart';
import '../presentation_layer/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();
  static final MyApp instance = MyApp._internal();
  factory MyApp() => instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationThemeData(),
      onGenerateRoute: RouterGenerator.getRoute,
      // initialRoute: '/none',
      initialRoute: Routes.splashRoute,
    );
  }
}
