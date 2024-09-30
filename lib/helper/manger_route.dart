import 'package:badiyh_calendar/core/model/months.dart';
import 'package:badiyh_calendar/core/model/seasons.dart';
import 'package:badiyh_calendar/core/views/bee_calendar_screen.dart';
import 'package:badiyh_calendar/core/views/details_screen.dart';
import 'package:badiyh_calendar/core/views/not_found_page.dart';
import 'package:badiyh_calendar/core/views/stars_screen.dart';
import 'package:badiyh_calendar/core/views/test.dart';
import 'package:flutter/material.dart';

class MangerRoute {
  static Route<dynamic>? appRoute(RouteSettings route){
    switch (route.name) {
      case '/detalis':
                Seasons season = route.arguments as Seasons;
        return MaterialPageRoute(builder: (ctx)=> DetailsScreen(s: season,),settings: route);
      case '/stars':
                Months month = route.arguments as Months;
        return MaterialPageRoute(builder: (ctx)=> StarsScreen(m: month,),settings: route);
      case '/test':
        return MaterialPageRoute(builder: (ctx)=> TestView());
      case '/bee':
        return MaterialPageRoute(builder: (ctx)=> BeeCalendarScreen());
      case '/test':
        return MaterialPageRoute(builder: (ctx)=> TestView());
        
      default:
        return MaterialPageRoute(builder: (ctx)=> NotFoundPage());
    }
  }
}