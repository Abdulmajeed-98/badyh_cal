import 'package:badiyh_calendar/core/views/Widget/cust_boxContact.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_buttonApp.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_dropDown.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_formField.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_imgCallGreen.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_imgLocaGreen.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_grund_img.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  GlobalKey<FormState> keyForm = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        /////////////
                        CusGrundImg(),
                        /////////////
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Form(
                            key: keyForm,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                    child: Text(
                                  "لديك مشكلة .. فريقنا في خدمتك 7/24",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )),
                                SizedBox(height: 20),
                                Cust_FormField(
                                    txtF: "أدخل اسمك الأول",
                                    txt: 'الاسم الأول'),
                                Cust_FormField(
                                    txtF: 'أدخل اسم عائلتك',
                                    txt: 'اسم العائلة'),
                                Cust_FormField(
                                    txtF: 'أدخل بريدك الإلكتروني',
                                    txt: 'البريد الإلكتروني'),

                                SizedBox(height: 16),
                                Text('التصنيف',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                                Cust_DropDown(),
                                SizedBox(height: 16),

                                Cust_FormField(
                                    txt: "الرسالة",
                                    txtF: "أدخل رسالتك",
                                    max: 10,
                                    min: 8),
                                Center(
                                  child: Cust_ButtonApp(
                                    width: 100,
                                  ),
                                ),
                                SizedBox(height: 16),
                                cust_boxContact(
                                  child: Row(
                                    children: [
                                      Cust_ImglocaGreen(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("الجمهورية اليمنية - حضرموت",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          SizedBox(height: 10),
                                          Text(
                                            "م/ القطن - مجمع البادية التنموي",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                cust_boxContact(
                                  child: Row(
                                    children: [
                                      Cust_ImgcallGreen(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "967711797771 +",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "967772204777 +",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
