import 'package:flutter/material.dart';
import 'package:jukebox_flutter/app/pages/home/home.view.dart';
import 'package:jukebox_flutter/app/pages/signin/signin.view.dart';
import 'package:jukebox_flutter/app/pages/signup/signup.view.dart';

const String HomeViewRoute = '/';
const String SignInViewRoute = 'signin';
const String SignOutViewRoute = 'signout';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case SignInViewRoute:
      return MaterialPageRoute(builder: (context) => SignInView());
    case SignOutViewRoute:
      return MaterialPageRoute(builder: (context) => SignUpView());
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}
