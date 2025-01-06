import 'package:flutter/material.dart';
import 'package:noor/core/function/build_page_route.dart';
import 'package:noor/core/routes/routes.dart';
import 'package:noor/features/home/presentation/screen/bottom_nav_bar_screen.dart';
import 'package:noor/features/location/presentation/screen/location_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.locationScreen:
        return smoothEaseInOutPageRoute(
          const LocationScreen(),
          settings: settings,
        );

      case Routes.bottomNavBar:
        return smoothEaseInOutPageRoute(
          const BottomNavBarScreen(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
