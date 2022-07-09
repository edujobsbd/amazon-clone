import 'package:flutter/material.dart';

import 'feature/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routesettings) {
  switch (routesettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routesettings,
        builder: (_) => const AuthScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Invalid Page Location'),
          ),
        ),
      );
  }
}
