import 'package:flutter/material.dart';
import 'package:despesas_pessoais/modules/auth/screen.dart';
import 'package:despesas_pessoais/modules/home/screen.dart';
import 'package:despesas_pessoais/modules/router/routes.dart';

Route genereteRouter(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.HOME:
      return _buildRoute(HomeScreen(), settings);
    case AppRoutes.AUTH:
      return _buildRoute(AuthScreen(), settings);
    default:
    return _buildRoute(HomeScreen());
  }
}

MaterialPageRoute _buildRoute(Widget route, [RouteSettings? settings]) {
  return MaterialPageRoute(
    builder: (context) => route,
    settings: settings,
  );
}
