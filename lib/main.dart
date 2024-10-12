import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewmodels/bee_calendar_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/month_v_m.dart';
import 'package:badiyh_calendar/helper/manger_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CalendarDateVM>(
            create: (ctx) => CalendarDateVM()),
        // ChangeNotifierProvider<MonthVM>(create: (ctx) => MonthVM()),
        // ChangeNotifierProvider<BeeCalendarVM>(create: (ctx) => BeeCalendarVM()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Tajawal",
          useMaterial3: false,
        ),
        initialRoute: '/splash',
        onGenerateRoute: MangerRoute.appRoute,
      ),
    );
  }
}
