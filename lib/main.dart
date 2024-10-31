import 'package:badiyh_calendar/core/theme/app_theme.dart';
import 'package:badiyh_calendar/core/viewModels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewModels/bee_calendar_VM.dart';
import 'package:badiyh_calendar/core/viewModels/star_VM.dart';
import 'package:badiyh_calendar/helpers/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<CalendarDateVM>(
          create: (context) => CalendarDateVM()),
      ChangeNotifierProvider<StarVM>(create: (context) => StarVM()),
      ChangeNotifierProvider<BeeCalendarVM>(
          create: (context) => BeeCalendarVM())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      onGenerateRoute: AppRoutes.generatedRoute,
    );
  }
}
