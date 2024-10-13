import 'package:badiyh_calendar/helper/manger_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Tajawal",
        useMaterial3: false,
      ),
      initialRoute: '/splash',
      onGenerateRoute: MangerRoute.appRoute,
    );
  }
}
