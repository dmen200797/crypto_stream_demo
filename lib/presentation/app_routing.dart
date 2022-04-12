import 'package:crypto_stream_demo/presentation/splash/splash_route.dart';
import 'package:flutter/material.dart';

import 'home/home_route.dart';

enum RouteDefine {
  homeScreen,
  splashScreen,
}

class AppRouting {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    final routes = <String, WidgetBuilder>{
      RouteDefine.homeScreen.name: (_) => HomeRoute.route,
      RouteDefine.splashScreen.name: (_) => SplashRoute.route,
    };

    final routeBuilder = routes[settings.name];

    return MaterialPageRoute(
      builder: (context) => routeBuilder!(context),
      settings: RouteSettings(name: settings.name),
    );
  }
}
