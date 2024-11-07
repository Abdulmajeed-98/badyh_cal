import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // استيراد GetX

class CusBottomNaviBar extends StatelessWidget {
  CusBottomNaviBar(
      {super.key, this.imgHome, this.imgBee, this.imgNews, this.imgCal});
  Widget? imgHome, imgBee, imgNews, imgCal;
  const_urls_img url = const_urls_img();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.081,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 21, 21, 21),
        Color.fromARGB(255, 15, 15, 15)
      ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => Get.offNamed("/home"), // التحويل إلى Get.offNamed
            icon: SizedBox(
              height: 20,
              width: 20,
              child: imgHome ?? Image.asset(url.homeOff),
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () =>
                Get.offNamed("/events"), // التحويل إلى Get.offNamed
            icon: SizedBox(
              height: 20,
              width: 20,
              child: imgNews ??
                  Image.asset(
                    url.newsOff,
                    fit: BoxFit.contain,
                  ),
            ),
            color: Colors.white,
          ),
          IconButton(
            iconSize: 3,
            onPressed: () => Get.offNamed("/bee"), // التحويل إلى Get.offNamed
            icon: SizedBox(
              height: 20,
              width: 20,
              child: imgBee ??
                  Image.asset(
                    url.beeOff,
                    fit: BoxFit.contain,
                  ),
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Get.offNamed("/calendar"); // التحويل إلى Get.offNamed
            },
            icon: SizedBox(
              height: 20,
              width: 20,
              child: imgCal ??
                  Image.asset(
                    url.calOff,
                    fit: BoxFit.contain,
                  ),
            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
