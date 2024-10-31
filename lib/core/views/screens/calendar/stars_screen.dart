import 'package:badiyh_calendar/core/constants/const_txt.dart';
import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:badiyh_calendar/core/models/seasons.dart';
import 'package:badiyh_calendar/core/viewModels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewModels/season_VM.dart';
import 'package:badiyh_calendar/core/viewModels/star_VM.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_appBarCalendar.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_boxImg.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_buttonApp.dart';
import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';

class StarsScreen extends StatelessWidget {
  StarsScreen({super.key});
  StarVM starVM = StarVM();
  SeasonVM seasonVM = SeasonVM();
  CalendarDateVM selectedDate = CalendarDateVM();
  Const_Txt txt = Const_Txt();
  const_urls_img url = const_urls_img();
  // List<Stars> allStar = [];
  List<Seasons> allseason = [];
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // allStar = starVM.loadAllStars();
    allseason = seasonVM.loadAllSeasons();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          drawer: AppDrawer(),
          key: scaffoldKey,
          bottomNavigationBar: CusBottomNaviBar(),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Cust_AppbarCalendar(
                    scafKey: () => scaffoldKey.currentState!.openDrawer(),
                    txt: txt.stars,
                    onPressed: () => Get.offNamed("/calendar")),
                //   Cust_DropdownSearch(),
                Expanded(child: Consumer<StarVM>(builder: (ctx, st, child) {
                  return GridView.builder(
                    itemCount: st.showAll ? st.displayedStars.length : 6,
                    padding: EdgeInsets.only(bottom: 20, left: 8, right: 8),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 18,
                            mainAxisSpacing: 16,
                            mainAxisExtent: 128,
                            crossAxisCount: 2),
                    itemBuilder: (ctx, index) => Cust_BoxShadow(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 3),
                      alignmen: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Cust_ImgBox(url: url.star),
                            Text(
                              "${st.displayedStars[index].starName!}",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(8, 164, 34, 1)),
                            ),
                            Text(
                              "${txt.season} ${allseason[st.displayedStars[index].seasonID! - 1].seasonName}",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(147, 147, 147, 1)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${st.displayedStars[index].startDate!}",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text("  ${Jiffy.now().year.toString()}",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${st.displayedStars[index].endDate!}",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("  ${Jiffy.now().year.toString()}",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ]),
                    ),
                  );
                })),
                SizedBox(height: 1),
              ],
            ),
          ),
          floatingActionButton: Consumer<StarVM>(
            builder: (context, st, child) {
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -10,
                    right: MediaQuery.of(context).size.width * 0.4,
                    child: Cust_ButtonApp(
                      txt: st.showAll ? txt.viewLes : txt.viewAll,
                      // height: 100,
                      width: MediaQuery.of(context).size.width * 0.3,
                      onTap: () {
                        Provider.of<StarVM>(context, listen: false)
                            .toggleShowAll();
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
