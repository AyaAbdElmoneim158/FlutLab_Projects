import 'package:flutter/material.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/util/Route/routes.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/views/auth_page.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/views/landing_page.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.landingRoute:
      return MaterialPageRoute(builder: (context) => const LandingPage());
    case Routes.authRoute:
      return MaterialPageRoute(builder: (context) => const AuthPage());
    default:
      return MaterialPageRoute(builder: (context) => const LandingPage());
  }
}
