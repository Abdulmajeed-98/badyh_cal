import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:badiyh_calendar/core/models/stars.dart';
import 'package:badiyh_calendar/core/viewModels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewModels/season_VM.dart';
import 'package:badiyh_calendar/core/viewModels/star_VM.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_boxImg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cust_BoxCalendarMain extends StatelessWidget {
  Cust_BoxCalendarMain({super.key});
  SeasonVM sVM = SeasonVM();
  StarVM staVM = StarVM();
  const_urls_img url = const_urls_img();
  List<Stars> lisStar = [];
  late bool isToday;
  @override
  Widget build(BuildContext context) {
    lisStar = staVM.loadAllStars();
    isToday =
        DateUtils.isSameDay(CalendarDateVM().selectedDate, DateTime.now());
    return ChangeNotifierProvider<CalendarDateVM>(
        create: (context) => CalendarDateVM(),
        child: Consumer<CalendarDateVM>(builder: (ctx, cT, child) {
          return Cust_BoxShadow(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 3, right: 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: InkWell(
                        onTap: () {
                          cT.previousDay();
                          print(
                              "${lisStar[staVM.getStar(cT.selectedDate)].starName}");
                        },
                        child: Icon(Icons.arrow_back_ios)),
                  ),

                  Container(
                    // color: Colors.yellow,
                    //التقويم
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("${cT.selectedDate.day}",
                            style: TextStyle(
                                fontSize: 80,
                                color: isToday
                                    ? Color.fromRGBO(8, 164, 34, 1)
                                    : Colors.grey,
                                fontWeight: FontWeight.w700)),
                        Text("${cT.monthNameAR}",
                            // "${DateFormat.MMMM('ar').format(cT.selectedDate)}",
                            // Jiffy.parse(cT.selectedDate.toString())
                            //     .MMMM,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                        Text("${cT.selectedDate.year}",
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400)),
                        /////////////////////
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${cT.hijriDate.hDay}",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            const SizedBox(width: 5),
                            Text(cT.hijriDate.longMonthName,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            const SizedBox(width: 5),
                            Text("${cT.hijriDate.hYear}",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //stars & season
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // color: Colors.blue,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Cust_ImgBox(url: url.autumn),
                              SizedBox(height: 10),
                              Text("فصل ${sVM.getSeason(cT)}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Cust_ImgBox(url: url.star),
                            Text(
                                "${lisStar[staVM.getStar(cT.selectedDate)].starName}",
                                //${staVM.getHoliday(cT)}
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Spacer(),
                  InkWell(
                    onTap: () {
                      cT.nextDay();
                      print(
                          "${lisStar[staVM.getStar(cT.selectedDate)].starName}");
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                    ),
                  ),
                ]),
          );
        }));
  }
}
