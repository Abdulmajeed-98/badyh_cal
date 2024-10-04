import 'package:badiyh_calendar/core/views/screens/bee_calendar_screen.dart';
import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/views/screens/detalis_screen.dart';
import 'package:badiyh_calendar/core/views/screens/home_screen.dart';
import 'package:badiyh_calendar/core/views/screens/not_found_page.dart';
import 'package:badiyh_calendar/core/views/screens/splash_screen.dart';
import 'package:badiyh_calendar/core/views/screens/test_details_screen.dart';
import 'package:badiyh_calendar/core/views/screens/test_home_screen.dart';
import 'package:badiyh_calendar/core/views/screens/test_widgets.dart';

import 'package:flutter/material.dart';

class MangerRoute {
  static Route<dynamic>? appRoute(RouteSettings route) {
    switch (route.name) {
      case '/wid':
        return MaterialPageRoute(builder: (ctx) => TestWidgets());
      case '/widgets':
        // return MaterialPageRoute(builder: (ctx) => TestWidgets());
      case '/home':
        return MaterialPageRoute(builder: (ctx) => HomeScreen());
      case '/splach':
        return MaterialPageRoute(builder: (ctx) => SplashScreen());
      case '/testd':
        return MaterialPageRoute(builder: (ctx) => TestHomeScreen());
      case '/testh':
        // Categories category = route.arguments as Categories;
        return MaterialPageRoute(builder: (ctx) => TestDetailsScreen());
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
