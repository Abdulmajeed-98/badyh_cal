import 'package:badiyh_calendar/core/model/pages_api.dart';
import 'package:badiyh_calendar/core/viewmodels/pages_v_m.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () => Navigator.popAndPushNamed(context,'/testh'), child: Text('Home')),
      ),
    );
  }
}