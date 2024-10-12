import 'package:badiyh_calendar/core/views/screens/NotFoundPage.dart';
import 'package:badiyh_calendar/core/views/screens/about_screen.dart';
import 'package:badiyh_calendar/core/views/screens/bee_calendar_screen.dart';
import 'package:badiyh_calendar/core/views/screens/calendar_screen.dart';
import 'package:badiyh_calendar/core/views/screens/contact.dart';
import 'package:badiyh_calendar/core/views/screens/eventsBadyh_screen.dart';
import 'package:badiyh_calendar/core/views/screens/splash_screen.dart';
import 'package:badiyh_calendar/core/views/screens/stars_screen.dart';

import 'package:flutter/material.dart';

class MangerRoute {
  static Route<dynamic>? appRoute(RouteSettings route) {
    switch (route.name) {
      case '/splash':
        return MaterialPageRoute(builder: (ctx) => SplashScreen());
      // case '/النماذج والاستمارات':
      //   Pages pages = route.arguments as Pages;
      //   return MaterialPageRoute(builder: (ctx) => TestDetailsScreen(p: pages,));

      case '/bee':
        return MaterialPageRoute(builder: (ctx) => BeeCalendarScreen());
      case '/calendar':
        return MaterialPageRoute(builder: (ctx) => CalendarScreen());
      case '/star':
        return MaterialPageRoute(builder: (ctx) => StarsScreen());
      case '/event':
        return MaterialPageRoute(builder: (ctx) => EventsBadyhScreen());
      case '/about':
        return MaterialPageRoute(builder: (ctx) => AboutScreen());
      case '/contact':
        return MaterialPageRoute(builder: (ctx) => ContactScreen());
      /////

      default:
        return MaterialPageRoute(builder: (ctx) => Notfoundpage());
    }
  }
}
