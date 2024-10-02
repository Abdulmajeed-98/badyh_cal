import 'package:badiyh_calendar/core/model/categories_api.dart';
import 'package:badiyh_calendar/core/model/pages_api.dart';
import 'package:badiyh_calendar/core/views/bee_calendar_screen.dart';
import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/views/detalis_screen.dart';
import 'package:badiyh_calendar/core/views/home_screen.dart';
import 'package:badiyh_calendar/core/views/not_found_page.dart';
import 'package:badiyh_calendar/core/views/splash_screen.dart';
import 'package:badiyh_calendar/core/views/test_details_screen.dart';
import 'package:badiyh_calendar/core/views/test_home_screen.dart';

import 'package:flutter/material.dart';

class MangerRoute {
  static Route<dynamic>? appRoute(RouteSettings route) {
    switch (route.name) {
      case '/home':
        return MaterialPageRoute(builder: (ctx) => HomeScreen());
      case '/splach':
        return MaterialPageRoute(builder: (ctx) => SplashScreen());
      case '/testh':
        return MaterialPageRoute(builder: (ctx) => TestHomeScreen());
      case '/testd':
        Categories category = route.arguments as Categories;
        return MaterialPageRoute(builder: (ctx) => TestDetailsScreen(c: category,));
      // case '/النماذج والاستمارات':
      //   Pages pages = route.arguments as Pages;
      //   return MaterialPageRoute(builder: (ctx) => TestDetailsScreen(p: pages,));
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
