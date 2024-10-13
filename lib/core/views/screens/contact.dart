import 'package:badiyh_calendar/core/constants/scaffold_key.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_buttonApp.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_drawer_icon.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_grund_img.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            bottomNavigationBar: CusBottomNaviBar(),
            key: ScaffoldKey.SK,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    // padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CusGrundImg(
                          txt: 'اتصل بنا',
                        ),
                        Center(
                            child: Text("لديك مشكلة .. فريقنا في خدمتك 7/24",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500))),
                        SizedBox(height: 20),
                        Text('الاسم الأول',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 10),
                            border: OutlineInputBorder(),
                            hintText: 'أدخل اسمك الأول',
                          ),
                        ),
                        SizedBox(height: 16),
                        Text('اسم العائلة',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 10),
                            border: OutlineInputBorder(),
                            hintText: 'أدخل اسم عائلتك',
                          ),
                        ),
                        SizedBox(height: 16),
                        Text('البريد الإلكتروني',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 10),
                            border: OutlineInputBorder(),
                            hintText: 'أدخل بريدك الإلكتروني',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 16),
                        Text('التصنيف',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 10),
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text('استفسار'),
                              value: 'استفسار',
                            ),
                            DropdownMenuItem(
                              child: Text('شكوى'),
                              value: 'شكوى',
                            ),
                            DropdownMenuItem(
                              child: Text('اقتراح'),
                              value: 'اقتراح',
                            ),
                          ],
                          onChanged: (value) {},
                          hint: Text('اختر تصنيفًا'),
                        ),
                        SizedBox(height: 16),
                        Text('الرسالة',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                        TextFormField(
                          maxLines: 10,
                          minLines: 8,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'أدخل رسالتك',
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Cust_ButtonApp(
                            // width: 100,
                            child: Text(
                              'إرسال',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        // Expanded(
                        //   child: Cust_ButtonApp(
                        //     //  width: 100,
                        //     child: Column(
                        //       children: [
                        //         Text(
                        //           'إرسال',
                        //           style: TextStyle(color: Colors.white),
                        //         ),
                        //         Text(
                        //           'إرسال',
                        //           style: TextStyle(color: Colors.white),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        ////////
                        // Center(
                        //   child: ElevatedButton(
                        //     onPressed: () {
                        //       // Handle send action
                        //     },
                        //     child: Text('إرسال'),
                        //     style: ElevatedButton.styleFrom(
                        //       // padding: EdgeInsets.symmetric(vertical: 15)
                        //       backgroundColor: Colors.black,
                        //       textStyle: TextStyle(fontSize: 16),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                CusDrawerIcon(
                    onPressed: () => ScaffoldKey.SK.currentState!.openDrawer),
              ],
            ),
          ),
        ));
  }
}
