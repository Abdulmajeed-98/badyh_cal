import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:badiyh_calendar/core/viewModels/setup_VM.dart';
import 'package:badiyh_calendar/helpers/drawer_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  @override
  Widget build(BuildContext context) {
    setup(context);
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              child: FlutterSplashScreen.scale(
                backgroundImage: Image.asset(
                  "assets/images/badyh_splach.png",
                ),
                backgroundColor: Colors.transparent,
                // duration: Duration(seconds: 0),
                animationDuration: const Duration(seconds: 3),
                onInit: () {},
                onEnd: () {},
                childWidget: Image.asset("assets/images/splashAnim.png"),
                // nextScreen: HomeScreen(),
              ),
            )));
  }

  setup(BuildContext ctx) async {
    DrawerHelper drawerHelper = DrawerHelper.instance;
    if (drawerHelper.isEmpty) {
      SetupVm setupVm = SetupVm();
      await setupVm.setupDrawer();
      drawerHelper.isEmpty = false;
      Future.delayed(Duration(seconds: 2), () {
        Get.offNamed('/home');
      });
    }
  }
}
