import 'package:badiyh_calendar/core/views/bee_calendar_screen.dart';
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
        Seasons season = route.arguments as Seasons;
        return MaterialPageRoute(
            builder: (ctx) => DetalisScreen(
                  s: season,
                ),
            settings: route);
      case '/bee':
        return MaterialPageRoute(builder: (ctx) => BeeCalendarScreen());

      default:
        return MaterialPageRoute(builder: (ctx) => NotFoundPage());
    }
  }
}
