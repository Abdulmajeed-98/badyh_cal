// import 'package:badiyh_calendar/core/views/screens/bee_calendar_screen.dart';
// import 'package:badiyh_calendar/core/views/screens/calendar_screen.dart';
// import 'package:badiyh_calendar/core/views/screens/eventsBadyh_screen.dart';
// import 'package:badiyh_calendar/core/views/screens/home_screen.dart';
// import 'package:badiyh_calendar/core/views/screens/news_screen.dart';
// import 'package:badiyh_calendar/core/views/screens/projects_screen.dart';
// import 'package:badiyh_calendar/core/views/screens/splash_screen.dart';
// import 'package:badiyh_calendar/core/views/screens/stars_screen.dart';
// import 'package:badiyh_calendar/core/views/screens/test_widgets.dart';
// import 'package:badiyh_calendar/core/views/screens/web_view_screen.dart';
// import 'package:badiyh_calendar/db/edit_calender_db.dart';
// import 'package:flutter/material.dart';

// class DisplayScreen extends StatelessWidget {
//   DisplayScreen({super.key});
//   EditCalenderDb db =EditCalenderDb();
//   List li = [
//   '/splash',
//   '/home',
//   '/news',
//   '/wid',
//   '/projects',
//   '/calendar',
//   '/events',
//   '/stars',
//   '/bee'
//   '/web',
//   '/detalis',
// ];
// List pages = [
//   SplashScreen(),
//   HomeScreen(),
//   NewsScreen(),
//   TestWidgets(),
//   ProjectsScreen(),
//   CalendarScreen(),
//   EventsBadyhScreen(),
//   StarsScreen(),
//   BeeCalendarScreen(),
//   WebViewScreen(path: 'https://pub.dev/packages/webview_flutter/example'),
// ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView.builder(itemBuilder: (ctx,i)=>pages[i]),
//     );
//   }
// }