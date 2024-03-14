import 'package:flutter/material.dart';
import 'package:flutter_web_01_learn/layout_main_page.dart';
import 'package:flutter_web_01_learn/locator.dart';
import 'package:flutter_web_01_learn/navigation_service.dart';
import 'package:flutter_web_01_learn/route_generator.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Web',
      initialRoute: '/stateful',
      navigatorKey: locator<NavigationService>().navigartorKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      builder: (_, child) => MainLayouScreen(child: child!),
    );
  }
}
