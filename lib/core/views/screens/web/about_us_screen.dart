import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_back_button.dart';
import 'package:badiyh_calendar/helpers/about_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: AppDrawer(),
          // key: ScaffoldKey.SK,
          body: Stack(
            children: [
              WebViewWidget(controller: aboutUsController),
              Positioned(
                left: 10,
                top: 15,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.5),
                        color: Color.fromRGBO(15, 15, 15, 1)),
                    child: CusBackButton()),
              ),
              // CusDrawerIcon(onPressed: () => ScaffoldKey.SK.currentState!.openDrawer,)
            ],
          ),
        ),
      ),
    );
  }
}
