import 'package:flutter/material.dart';
import 'package:flutter_web_01_learn/custom_app_menu.dart';

class MainLayouScreen extends StatelessWidget {
  const MainLayouScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomAppMenu(),
            const Spacer(),
            Expanded(child: child),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}