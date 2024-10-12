import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBar.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          drawer: const Drawer(),
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60.0),
              child: Cust_Appbar(txtTitle: "من نحن")),
          body: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.yellow,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.people),
                        SizedBox(width: 8),
                        Text(
                          "من نحن؟",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      """مؤسسة البادية للتنمية والأعمال الإنسانية، أحدى المنظمات اليمنية الرائدة  العاملة بالداخل اليمني في المجالات التنموية والإنسانية المختلفة، وقد  تاسست في 21 رجب لعام 1422هـ الموافق أكتوبر عام 2001م .واتخذت من وادي  حضرموت مقراً رئيسياً لها وانطلقت منذ تأسيها جاهدة لتكون موضع الريادة في  تطوير حياة الناس وتوجيه طاقاتهم نحو التنمية والبناء، معتمدة العمل  المؤسسي المشترك في سبيل تحقيق أهدافها، لتجعل الإنسان أولاً وترسم صورة  رائعة لمعاني الإنسانية والمصداقية والشفافية في كل مشاريعها وبرامجها .""",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                            child: Cust_BoxShadow(
                          alignmen: Alignment.center,
                          height: 145,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: const [
                            Color.fromRGBO(0, 0, 0, 1),
                            Color.fromRGBO(34, 34, 39, 1)
                          ],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(
                                    "assets/images/eye.png",
                                    fit: BoxFit.fill,
                                  )),
                              const Text(
                                "رؤيتنا",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(8, 164, 34, 1)),
                              ),
                              const Text(
                                "أن نكون عنوان الإنسانية ، والمشاركة المؤسساتية التنموية محلياً واقليمياً",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )),
                        const SizedBox(width: 7),
                        Expanded(
                            child: Cust_BoxShadow(
                          alignmen: Alignment.center,
                          height: 145,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: const [
                            Color.fromRGBO(0, 0, 0, 1),
                            Color.fromRGBO(34, 34, 39, 1)
                          ],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(
                                    "assets/images/email.png",
                                    fit: BoxFit.fill,
                                  )),
                              const Text(
                                "رسالتنا",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(8, 164, 34, 1)),
                              ),
                              const Text(
                                "مؤسسة تنموية انسانية ، تعتمد العمل المؤسسي المشترك لرقي المجتمع اليمني ونهضته",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Cust_BoxShadow()
                  ],
                )),
          )),
    );
  }
}
