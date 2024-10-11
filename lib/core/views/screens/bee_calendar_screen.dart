import 'package:badiyh_calendar/core/model/bee_calendar.dart';
import 'package:badiyh_calendar/core/viewmodels/bee_calendar_v_m.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';

class BeeCalendarScreen extends StatelessWidget {
  BeeCalendarScreen({super.key});
  List<DropdownMenuItem<dynamic>> list = [
    const DropdownMenuItem(child: Text("data"))
  ];
  var scaffoldKey = GlobalKey<ScaffoldState>();
  BeeCalendarVM bvm = BeeCalendarVM();
  late List<BeeCalendar> allBee;
  @override
  Widget build(BuildContext context) {
    allBee = bvm.loadAllBeePhases();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
            drawer: CusAppDrawer(),
            key: scaffoldKey,
            bottomNavigationBar: CusBottomNaviBar(),
            body: Container(
              // color: Colors.green,
              // padding: const EdgeInsets.only(left: 10, right: 10),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              //  color: Colors.yellow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.blue,
                    alignment: Alignment.center,
                    //  color: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.only(bottom: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.menu,
                              size: 28,
                              color: Colors.black,
                            ),
                            onPressed: () =>
                                scaffoldKey.currentState!.openDrawer(),
                          ),
                          const Text("مراحل تربية النحل وجني العسل",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          IconButton(
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.black,
                              ),
                              onPressed: () {}),
                        ]),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(221, 221, 221, 1))),
                    child: DropdownButtonFormField(
                        isExpanded: true,
                        elevation: 5,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(147, 147, 147, 1)),
                        items: list,
                        onChanged: (c) {}),
                  ),
                  Expanded(
                      child: GridView.builder(
                    itemCount: allBee.length,
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 23,
                            mainAxisSpacing: 16,
                            mainAxisExtent: 90,
                            crossAxisCount: 1),
                    itemBuilder: (ctx, index) => Cust_BoxShadow(
                        alignmen: Alignment.center,
                        // height: 200,
                        // width: 200,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.apple),
                                Text(allBee[index].phaseName.toString())
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Icon(Icons.apple),
                                  SizedBox(width: 10),
                                  Text(
                                    allBee[index]
                                        .stars!
                                        .map((star) => star.starName)
                                        .join(' - '),
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  // Text.rich( TextSpan()),
                                  Text("من "),
                                  Text(allBee[index].startDate.toString()),
                                  Text(" الى "),
                                  Text(allBee[index].endDate.toString())
                                ])
                              ],
                            ),
                          ],
                        )),
                  ))
                ],
              ),
            )),
      ),
    );
  }
}
