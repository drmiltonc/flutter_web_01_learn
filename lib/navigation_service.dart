import 'package:flutter/cupertino.dart';

class NavigationService {
  
  final GlobalKey<NavigatorState> navigartorKey = GlobalKey<NavigatorState>();

  Future navigaTo(String routeName) {
    return navigartorKey.currentState!.pushNamed(routeName);

  }

  void goBack(String routeName) {
    return navigartorKey.currentState!.pop();
  }

}

final navigationService = NavigationService();