import 'package:fluro/fluro.dart';
import 'package:flutter_web_01_learn/error_view.dart';
import 'package:flutter_web_01_learn/provider_view.dart';
import 'package:flutter_web_01_learn/stateful_view.dart';

class AppRouter {
  static final fluroRouter = FluroRouter();

  static void configureRoutes() {
   /*  fluroRouter.define(
      '/',
      handler: _counterHandler,
      transitionType: TransitionType.none,
    ); */

    fluroRouter.define(
      '/stateful',
      handler: _counterStatefulHandler,
      transitionType: TransitionType.none,
    );

  fluroRouter.define(
      '/stateful/:base',
      handler: _counterStatefulHandler,
      transitionType: TransitionType.none,
    );

    fluroRouter.define(
      '/provider',
      handler: _counterProviderHandler,
      transitionType: TransitionType.none,
    );

    fluroRouter.notFoundHandler = _pageNotFound;
  }

 /*  static final _counterHandler =
      Handler(handlerFunc: (context, params) {
        print(params['base']?[0]);
        return TextStateful();
        }
      ); */

  static final _counterStatefulHandler =
      Handler(handlerFunc: (context, params) {
        print(params['base']?[0]);
        return TextStateful(base: params['base']?[0] ?? '5' );
        }
      );

  static final _counterProviderHandler =
      Handler(handlerFunc: (context, params) {
          print(params);
          return TextProvider(base: params['q']?[0] ?? '20');
          
          });

  static final _pageNotFound =
      Handler(handlerFunc: (_, __) => const ErrorView());
}
