import 'package:badiyh_calendar/core/models/category.dart';
import 'package:badiyh_calendar/core/views/screens/about_us_screen.dart';
import 'package:badiyh_calendar/core/views/screens/bee_calendar_screen.dart';
import 'package:badiyh_calendar/core/views/screens/calendar_screen.dart';
import 'package:badiyh_calendar/core/views/screens/contact.dart';
import 'package:badiyh_calendar/core/views/screens/eventsBadyh_screen.dart';
import 'package:badiyh_calendar/core/views/screens/faq_Screen.dart';
import 'package:badiyh_calendar/core/views/screens/home_screen.dart';
import 'package:badiyh_calendar/core/views/screens/not_found_screen.dart';
import 'package:badiyh_calendar/core/views/screens/posts_screens.dart';
import 'package:badiyh_calendar/core/views/screens/splash_screen.dart';
import 'package:badiyh_calendar/core/views/screens/stars_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (ctx) => HomeScreen());
      case '/star':
        return MaterialPageRoute(builder: (ctx) => StarsScreen());
      case '/bee':
        return MaterialPageRoute(builder: (ctx) => BeeCalendarScreen());
      case '/about_us':
        return MaterialPageRoute(builder: (ctx) => AboutUsScreen());
      case '/calendar':
        return MaterialPageRoute(builder: (ctx) => CalendarScreen());
      case '/events':
        return MaterialPageRoute(builder: (ctx) => EventsBadyhScreen());
      case '/faq':
        return MaterialPageRoute(builder: (ctx) => FaqScreen());
      case '/contact_us':
        return MaterialPageRoute(builder: (ctx) => ContactScreen());
      case '/splash':
        return MaterialPageRoute(builder: (ctx) => SplashScreen());
      // case '/web':
      // String path = settings.arguments as String;
      //   return MaterialPageRoute(builder: (ctx) => WebScreen(path: path,));
      case '/posts':
        {
          Category category = settings.arguments as Category;
          return MaterialPageRoute(
              builder: (ctx) => PostsScreens(
                    category: category,
                  ));
        }
      default:
        return MaterialPageRoute(builder: (ctx) => NotFoundScreen());
    }
  }
}
