import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/model/seasons.dart';
import 'package:badiyh_calendar/core/model/stars.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/star_v_m.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';

class StarsScreen extends StatelessWidget {
  StarsScreen({super.key});
  List<DropdownMenuItem<dynamic>> list = [
    const DropdownMenuItem(child: Text("data"))
  ];
  var scaffoldKey = GlobalKey<ScaffoldState>();
  StarVM starVM = StarVM();
  SeasonVM seasonVM = SeasonVM();
  List<Stars> allStar = [];
  List<Seasons> allseason = [];
  @override
  Widget build(BuildContext context) {
    allStar = starVM.loadAllStars();
    allseason = seasonVM.loadAllSeasons();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
            drawer: CusAppDrawer(),
            key: scaffoldKey,
            bottomNavigationBar: CusBottomNaviBar(),
            body: Container(
              // color: Colors.green,
              // padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // color: Colors.yellow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.blue,
                    alignment: Alignment.center,
                    //  color: Colors.blue,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
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
                          const Text("النجوم",
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
                    itemCount: allStar.length,
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 23,
                            mainAxisSpacing: 16,
                            mainAxisExtent: 128,
                            crossAxisCount: 2),
                    itemBuilder: (ctx, index) => Cust_BoxShadow(
                      alignmen: Alignment.center,
                      // height: 200,
                      // width: 200,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.apple),
                            Text(
                              "${allStar[index].starName!}",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(8, 164, 34, 1)),
                            ),
                            Text(
                              "فصل ${allseason[allStar[index].seasonID! - 1].seasonName}",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(147, 147, 147, 1)),
                            ),
                            Text("${allStar[index].startDate!}",
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
                  ))
                ],
              ),
            )),
      ),
    );
  }
}
