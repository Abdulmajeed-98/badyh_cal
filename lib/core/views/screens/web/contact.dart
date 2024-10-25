import 'package:badiyh_calendar/core/models/navigation.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_boxContact.dart';
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
import 'package:dio/dio.dart';
import 'dart:convert';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key, required this.nav});
  final Navigation nav;

  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final String serviceID = "service_ak2ymwf";
  final String templateID = "template_rawteel";
  final String userID = "Erb7MyW11sKAI3F44";

  final TextEditingController em = TextEditingController();
  final TextEditingController subject = TextEditingController();
  final TextEditingController body = TextEditingController();

  String? msg, myEmail, firstName, lastName, sub;
  late final Email mail;
  final Dio dio = Dio();

  void _sendMail(BuildContext context) async {
    final url = "https://api.emailjs.com/api/v1.0/email/send";

    try {
      final res = await dio.post(url,
          options: Options(headers: {'Content-Type': 'application/json'}),
          data: jsonEncode({
            'service_id': serviceID,
            'template_id': templateID,
            'user_id': userID,
            'template_params': {
              'first_name': firstName,
              'last_name': lastName,
              'subject': subject.text,
              'email': em.text,
              'msg': body.text,
            }
          }));

      if (res.statusCode == 200) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Email sent')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Failed to Send Email: ${res.data}")));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error: $e")));
    }

    final Email email = Email(
      body: body.text,
      subject: subject.text,
      recipients: ["badiyh@gmail.com"],
      isHTML: false,
    );

    await FlutterEmailSender.send(email);
  }
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: CusBottomNaviBar(),
          drawer: AppDrawer(),
          body: Stack(
            children: [
              CusGrundImg(txt: nav.title),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 7),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: key,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  "لديك مشكلة .. فريقنا في خدمتك 7/24",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
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
                                txt: 'الاسم الأول',
                              ),
                              Cust_FormField(
                                validat: (p0) {
                                  if (p0!.length < 3) {
                                    return "الاسم يجب ان يكون على الاقل ثلاث احرف";
                                  }
                                  return null;
                                },
                                onChanged: (p0) => lastName = p0,
                                txtF: 'أدخل اسم عائلتك',
                                txt: 'اسم العائلة',
                              ),
                              // Cust_FormField(
                              //   controller: em,
                              //   txtF: 'أدخل بريدك الإلكتروني',
                              //   txt: 'البريد الإلكتروني',
                              // ),
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
                                controller: body,
                                validat: (p0) {
                                  if (p0 == null) {
                                    return "يجب تعبئة هذا الحقل";
                                  }
                                  return null;
                                },
                                txt: "الرسالة",
                                txtF: "أدخل رسالتك",
                                max: 10,
                                min: 8,
                              ),
                              Center(
                                child: Cust_ButtonApp(
                                  onTap: () => _sendMail(context),
                                  width: 100,
                                ),
                              ),
                              SizedBox(height: 16),
                              cust_boxContact(
                                child: Row(
                                  children: [
                                    // Cust_ImglocaGreen(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("الجمهورية اليمنية - حضرموت",
                                            style: TextStyle(color: Colors.white)),
                                        SizedBox(height: 10),
                                        Text(
                                          "م/ القطن - مجمع البادية التنموي",
                                          style: TextStyle(color: Colors.white),
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
                                    // Cust_ImgcallGreen(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "967711797771 +",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "967772204777 +",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CusDrawerIcon(
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
              ),
              CusBackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
