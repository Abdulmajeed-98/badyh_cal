import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBar.dart';
import 'package:flutter/material.dart';

class StarsScreen extends StatelessWidget {
  StarsScreen({super.key});
  List<DropdownMenuItem<dynamic>> list = [
    const DropdownMenuItem(child: Text("data"))
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          drawer:const Drawer(),
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60.0),
              child: Cust_Appbar(txtTitle: "النجوم")),
          body: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(18),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            //  color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(bottom: 23),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                          width: 1, color: const Color.fromRGBO(221, 221, 221, 1))),
                  child: DropdownButtonFormField(
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(147, 147, 147, 1)),
                      items: list,
                      onChanged: (c) {}),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.771,
                  child: SingleChildScrollView(
                    child: Wrap(
                      runSpacing: 23,
                      spacing: 23,
                      children: [
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        ////////////////////////////////////////
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        Cust_BoxShadow(
                          height: 128,
                          width: 192,
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "نجم الدلو",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                                Text(
                                  "فصل الخريف",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(147, 147, 147, 1)),
                                ),
                                Text("1 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("13 اكتوبر  2024",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ]),
                        ),
                        /////////////////////////////
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
