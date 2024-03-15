import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_web_01_learn/error_view.dart';
import 'package:flutter_web_01_learn/provider_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/stateful':
       return   _fadeRoute(const ErrorView(), '/stateful' ) ;
      case '/provider':
        return _fadeRoute( TextProvider(base: ''), '/provider' );
      default: 
        return _fadeRoute(const ErrorView(), '/404' );
    }

  }

  static PageRoute _fadeRoute(Widget child, String routeName) {

    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionDuration: const Duration(milliseconds: 100),
      transitionsBuilder: (_, animation, __, ___) =>
      (kIsWeb)
      ? FadeTransition(
        opacity: animation,
        child: child,
        )

      : CupertinoPageTransition(
        primaryRouteAnimation: animation,
        secondaryRouteAnimation: __,
        linearTransition: true,
        child: child)

      );

  }
}