import 'package:flutter/material.dart';
import 'package:flutter_web_01_learn/custom_text_button.dart';
import 'package:flutter_web_01_learn/locator.dart';
import 'package:flutter_web_01_learn/navigation_service.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    print('appbar creado');
    return LayoutBuilder(builder: (_, BoxConstraints constraints) {
      return (constraints.maxWidth > 520) 
        ? const _TabletDesktopMenu()
        : const _MobileMenu();
    },);
  }
}




class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      //color: Colors.red,
      
      child: Row(
        children: [
          CustomTextButton(text: 'Contador Stateful', onPressed: () => locator<NavigationService>().navigaTo('/stateful')),
          CustomTextButton(text: 'Contador Provider', onPressed:  () => locator<NavigationService>().navigaTo('/provider')),
          CustomTextButton(text: 'Otra página', onPressed: () => locator<NavigationService>().navigaTo('/abc123'),)
          
        ],
      ),
    );
  }
}


class _MobileMenu extends StatelessWidget {
  const _MobileMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      //color: Colors.red,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextButton(text: 'Contador Stateful', onPressed: () => locator<NavigationService>().navigaTo('/stateful')),
          CustomTextButton(text: 'Contador Provider', onPressed:  () => locator<NavigationService>().navigaTo('/provider')),
          CustomTextButton(text: 'Otra página', onPressed: () => locator<NavigationService>().navigaTo('/abc123'),)
          
        ],
      ),
    );
  }
}