import 'package:badiyh_calendar/core/model/categories_api.dart';
import 'package:badiyh_calendar/core/model/seasons.dart';
import 'package:badiyh_calendar/core/views/screens/about_screen.dart';
import 'package:badiyh_calendar/core/views/screens/bee_calendar_screen.dart';
import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/views/screens/calendar_screen.dart';
import 'package:badiyh_calendar/core/views/screens/detalis_screen.dart';
import 'package:badiyh_calendar/core/views/screens/eventsBadyh_screen.dart';
import 'package:badiyh_calendar/core/views/screens/home_screen.dart';
import 'package:badiyh_calendar/core/views/screens/not_found_page.dart';
import 'package:badiyh_calendar/core/views/screens/splash_screen.dart';
import 'package:badiyh_calendar/core/views/screens/stars_screen.dart';
import 'package:badiyh_calendar/core/views/screens/testScreen/test_calendarPro.dart';
import 'package:badiyh_calendar/core/views/screens/testScreen/test_details_screen.dart';
import 'package:badiyh_calendar/core/views/screens/testScreen/test_home_screen.dart';
import 'package:badiyh_calendar/core/views/screens/testScreen/test_page.dart';
import 'package:badiyh_calendar/core/views/screens/testScreen/test_widgets.dart';

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
      case '/splash':
        return MaterialPageRoute(builder: (ctx) => SplashScreen());
      case '/testh':
        return MaterialPageRoute(builder: (ctx) => TestHomeScreen());
      case '/testd':
        Categories category = route.arguments as Categories;
        return MaterialPageRoute(
            builder: (ctx) => TestDetailsScreen(
                  c: category,
                ));
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
      case '/calendar':
        return MaterialPageRoute(builder: (ctx) => CalendarScreen());
      case '/testcal':
        return MaterialPageRoute(builder: (ctx) => TestCalendarPro());
      case '/star':
        return MaterialPageRoute(builder: (ctx) => StarsScreen());
      case '/event':
        return MaterialPageRoute(builder: (ctx) => EventsBadyhScreen());
      case '/about':
        return MaterialPageRoute(builder: (ctx) => const AboutScreen());
      ////
      case '/test':
        return MaterialPageRoute(builder: (ctx) => const TestPage());
      default:
        return MaterialPageRoute(builder: (ctx) => const NotFoundPage());
    }
  }
}
