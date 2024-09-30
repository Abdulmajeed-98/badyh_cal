import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/views/detalis_screen.dart';
import 'package:badiyh_calendar/core/views/home_screen.dart';
import 'package:badiyh_calendar/core/views/not_found_page.dart';

import 'package:flutter/material.dart';

class MangerRoute {
  static Route<dynamic>? appRoute(RouteSettings route) {
    switch (route.name) {
      case '/home':
        return MaterialPageRoute(builder: (ctx) => HomeScreen());
      case '/detalis':
        Seasons seasons = route.arguments as Seasons;
        return MaterialPageRoute(
            builder: (ctx) => DetalisScreen(
                  s: seasons,
                ));
      default:
        return MaterialPageRoute(builder: (ctx) => NotFoundPage());
    }
  }
}
