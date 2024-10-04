import 'package:badiyh_calendar/core/viewmodels/articles_v_m.dart';
import 'package:badiyh_calendar/helper/manger_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
      Get.put(ArticlesVM());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
        ),
        initialRoute: '/wid',
        onGenerateRoute: MangerRoute.appRoute,
    
    );
  }
}
