import 'package:badiyh_calendar/helper/manger_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Tajawal",
        useMaterial3: false,
      ),
      initialRoute: '/event',
      onGenerateRoute: MangerRoute.appRoute,
    );
  }
}
