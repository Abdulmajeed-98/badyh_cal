import 'package:badiyh_calendar/core/model/pages_api.dart';
import 'package:badiyh_calendar/core/viewmodels/pages_v_m.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "/home");
    });
  }

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
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/badyh_splach.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: SizedBox(
                      height: 144,
                      width: 144,
                      child: Image.asset("assets/images/badyh_logo.png"))),
              Text("مؤسسة البادية للتنمية",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text("والأعمال الإنسانية",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
              // ElevatedButton(  onPressed: () => Navigator.popAndPushNamed(context, '/testh'),
              //     child: Text('Home')),
            ],
          ),
        ),
      ),
    );
  }
}
