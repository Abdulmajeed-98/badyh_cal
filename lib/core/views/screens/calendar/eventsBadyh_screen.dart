import 'package:badiyh_calendar/core/constants/const_txt.dart';
import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:badiyh_calendar/core/model/events_badyh.dart';
import 'package:badiyh_calendar/core/viewmodels/events_badyh_VM.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxEvent.dart';
import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_grund_img.dart';

import 'package:flutter/material.dart';

class EventsBadyhScreen extends StatelessWidget {
  EventsBadyhScreen({super.key});
  EventsBadyh_VM evm = EventsBadyh_VM();
  Const_Txt txt = Const_Txt();
  const_urls_img url = const_urls_img();
  List<EventsBadyh> listevent = [];

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    listevent = evm.loadAllBeePhases();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
            // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            drawer: AppDrawer(),
            key: scaffoldKey,
            bottomNavigationBar: CusBottomNaviBar(
              imgNews: Image.asset(url.newsOn),
            ),
            body: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Stack(children: [
                    CusGrundImg(
                      txt: txt.events,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Positioned(
                      child: IconButton(
                        icon: const Icon(
                          Icons.menu,
                          size: 35,
                          color: Colors.white,
                        ),
                        onPressed: () => scaffoldKey.currentState!.openDrawer(),
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 22,
                  ),
                  Expanded(
                    child: GridView.builder(
                        itemCount: listevent.length,
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, bottom: 22),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                mainAxisExtent: 85,
                                crossAxisCount: 2),
                        itemBuilder: (ctx, index) => Cust_BoxEvent(
                            txtTitle: listevent[index].title,
                            txtSubject: listevent[index].subject,
                            day: listevent[index].day,
                            month: listevent[index].month,
                            year: "${DateTime.now().year}")),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
