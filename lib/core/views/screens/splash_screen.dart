import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:badiyh_calendar/core/model/pages_api.dart';
import 'package:badiyh_calendar/core/viewmodels/pages_v_m.dart';
import 'package:badiyh_calendar/core/views/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "/home");
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/badyh_splach.png"),
                  fit: BoxFit.cover)),
          child: FlutterSplashScreen.scale(
            backgroundColor: Colors.white,
            duration: Duration(seconds: 3),
            animationDuration: const Duration(seconds: 2),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.green.shade100, Colors.green.shade900]),
            onInit: () {
              Text(
                "dafdhffjjgjgta",
                style: TextStyle(fontSize: 40),
              );
            },
            onEnd: () {
              Text(
                "dafdhffjjgjgta",
                style: TextStyle(fontSize: 40),
              );
            },
            childWidget: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assets/images/badyh_logo1.png"),
            ),
            onAnimationEnd: () => Text(
              "dafdhffjjgjgta",
              style: TextStyle(fontSize: 40),
            ),
            nextScreen: HomeScreen(),
          ),
        ),
      ),
    );
  }
}
