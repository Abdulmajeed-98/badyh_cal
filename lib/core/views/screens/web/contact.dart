import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:badiyh_calendar/core/models/navigation.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_boxContact.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_boxImg.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_buttonApp.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_dropDown.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_formField.dart';
import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_back_button.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_drawer_icon.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_grund_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key, required this.nav});
  final Navigation nav;
  // GlobalKey<FormState> keyForm = GlobalKey();
  const_urls_img url = const_urls_img();

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  String? msg, myEmail, firstName, lastName, sub;
  late final Email mail;
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            bottomNavigationBar: CusBottomNaviBar(),
            key: scaffoldKey,
            drawer: AppDrawer(),
            body: Stack(
              children: [
                CusGrundImg(
                  txt: nav.title,
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 7),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        /////////////
                        /////////////
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Form(
                            // key: keyForm,
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
                                    validat: (p0) {
                                      if (p0!.length < 3) {
                                        return "الاسم يجب ان يكون على الاقل ثلاث احرف";
                                      }
                                      return null;
                                    },
                                    onChanged: (p0) => firstName = p0,
                                    txtF: "أدخل اسمك الأول",
                                    txt: 'الاسم الأول'),
                                Cust_FormField(
                                    validat: (p0) {
                                      if (p0!.length < 3) {
                                        return "الاسم يجب ان يكون على الاقل ثلاث احرف";
                                      }
                                      return null;
                                    },
                                    onChanged: (p0) => lastName = p0,
                                    txtF: 'أدخل اسم عائلتك',
                                    txt: 'اسم العائلة'),
                                Cust_FormField(
                                    onChanged: (p0) => myEmail = p0,
                                    txtF: 'أدخل بريدك الإلكتروني',
                                    txt: 'البريد الإلكتروني'),

                                SizedBox(height: 16),
                                Text('التصنيف',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                                Cust_DropDown(
                                  onChanged: (p0) => sub = p0,
                                ),
                                SizedBox(height: 16),

                                Cust_FormField(
                                    validat: (p0) {
                                      if (p0 == null) {
                                        return "يجب تعبئة هذا الحقل";
                                      }
                                      return null;
                                    },
                                    onChanged: (p0) => msg = p0,
                                    txt: "الرسالة",
                                    txtF: "أدخل رسالتك",
                                    max: 10,
                                    min: 8),
                                Center(
                                  child:
                                      //  Cust_ButtonApp(
                                      //   onTap: () async {
                                      //     mail = Email(
                                      //       subject: sub!,
                                      //       body:
                                      //           "${msg}/n${firstName! + " " + lastName!}",
                                      //       recipients: ["md9mgoody@gmail.com"],
                                      //       isHTML: false,
                                      //     );
                                      //     print(mail);
                                      //     FlutterEmailSender.send(mail)
                                      //         .then((value) {
                                      //       Fluttertoast.showToast(
                                      //           msg:
                                      //               "تم الارسال بنجاح", // الرسالة التي تريد عرضها
                                      //           toastLength: Toast
                                      //               .LENGTH_SHORT, // مدة ظهور الرسالة (قصيرة أو طويلة)
                                      //           gravity: ToastGravity
                                      //               .CENTER, // مكان ظهور الرسالة (أعلى، وسط، أسفل)
                                      //           timeInSecForIosWeb:
                                      //               1, // مدة عرض الرسالة لأجهزة iOS والويب
                                      //           backgroundColor: Colors
                                      //               .black, // لون خلفية الرسالة
                                      //           textColor: Colors.white, // لون النص
                                      //           fontSize: 16.0 // حجم النص
                                      //           );
                                      //       Get.offNamed('/home');
                                      //     }).catchError((error) {
                                      //       print("zzzzzzzzzzzzzzzzzzzzzzz$error");
                                      //       Fluttertoast.showToast(
                                      //           msg:
                                      //               "$error", // الرسالة التي تريد عرضها
                                      //           toastLength: Toast
                                      //               .LENGTH_LONG, // مدة ظهور الرسالة (قصيرة أو طويلة)
                                      //           gravity: ToastGravity
                                      //               .CENTER, // مكان ظهور الرسالة (أعلى، وسط، أسفل)
                                      //           timeInSecForIosWeb:
                                      //               1, // مدة عرض الرسالة لأجهزة iOS والويب
                                      //           backgroundColor: Colors
                                      //               .black, // لون خلفية الرسالة
                                      //           textColor: Colors.white, // لون النص
                                      //           fontSize: 16.0 // حجم النص
                                      //           );
                                      //     });
                                      //   },
                                      //   width: 100,
                                      // ),
                                      Cust_ButtonApp(
                                    onTap: () async {
                                      // التحقق من أن الحقول ليست فارغة
                                      if (firstName == null ||
                                          firstName!.isEmpty ||
                                          lastName == null ||
                                          lastName!.isEmpty ||
                                          msg == null ||
                                          msg!.isEmpty ||
                                          sub == null ||
                                          sub!.isEmpty) {
                                        Fluttertoast.showToast(
                                            msg: "عفوا يجب تعبئة كل الحقول",
                                            toastLength: Toast
                                                .LENGTH_LONG, // مدة ظهور الرسالة (قصيرة أو طويلة)
                                            gravity: ToastGravity
                                                .CENTER, // مكان ظهور الرسالة (أعلى، وسط، أسفل)
                                            timeInSecForIosWeb:
                                                1, // مدة عرض الرسالة لأجهزة iOS والويب
                                            backgroundColor: Colors
                                                .black, // لون خلفية الرسالة
                                            textColor: Colors.white, // لون النص
                                            fontSize: 16.0 // حجم النص
                                            );
                                        return; // الخروج من الدالة إذا كانت الحقول فارغة
                                      }

                                      // تابع الإرسال إذا كانت الحقول ممتلئة
                                      mail = Email(
                                        subject: sub!,
                                        body:
                                            "${msg}\n${firstName! + " " + lastName!}",
                                        recipients: ["md9mgoody@gmail.com"],
                                        isHTML: false,
                                      );
                                      print(mail);
                                      FlutterEmailSender.send(mail)
                                          .then((value) {
                                        Fluttertoast.showToast(
                                            msg: "تم الارسال بنجاح",
                                            toastLength: Toast
                                                .LENGTH_SHORT, // مدة ظهور الرسالة (قصيرة أو طويلة)
                                            gravity: ToastGravity
                                                .CENTER, // مكان ظهور الرسالة (أعلى، وسط، أسفل)
                                            timeInSecForIosWeb:
                                                1, // مدة عرض الرسالة لأجهزة iOS والويب
                                            backgroundColor: Colors
                                                .black, // لون خلفية الرسالة
                                            textColor: Colors.white, // لون النص
                                            fontSize: 16.0 // حجم النص
                                            );
                                        Get.offNamed('/home');
                                      }).catchError((error) {
                                        print("zzzzzzzzzzzzzzzzzzzzzzz$error");
                                        Fluttertoast.showToast(
                                            msg: "$error",
                                            toastLength: Toast
                                                .LENGTH_LONG, // مدة ظهور الرسالة (قصيرة أو طويلة)
                                            gravity: ToastGravity
                                                .CENTER, // مكان ظهور الرسالة (أعلى، وسط، أسفل)
                                            timeInSecForIosWeb:
                                                1, // مدة عرض الرسالة لأجهزة iOS والويب
                                            backgroundColor: Colors
                                                .black, // لون خلفية الرسالة
                                            textColor: Colors.white, // لون النص
                                            fontSize: 16.0 // حجم النص
                                            );
                                      });
                                    },
                                    width: 100,
                                  ),
                                ),
                                SizedBox(height: 16),
                                cust_boxContact(
                                  child: Row(
                                    children: [
                                      Cust_ImgBox(
                                        url: url.locaGreen,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 9),
                                      ),
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
                                      Cust_ImgBox(
                                          url: url.callGreen,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 9)),
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
                CusDrawerIcon(
                    onPressed: () => scaffoldKey.currentState!.openDrawer()),
                CusBackButton(),
              ],
            ),
          ),
        ));
  }
}
