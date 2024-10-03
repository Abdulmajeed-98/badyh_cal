import 'package:badiyh_calendar/core/model/all_models.dart';
import 'package:badiyh_calendar/core/viewmodels/month_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/star_v_m.dart';
import 'package:flutter/material.dart';

class DetalisScreen extends StatelessWidget {
  late Seasons s;
  DetalisScreen({super.key, required this.s});
  MonthVM mvm = MonthVM();
  StarVM starvm = StarVM();
  List<Months> seasonMonths = [];
  List<Stars> monthStars = [];

  @override
  Widget build(BuildContext context) {
    seasonMonths = mvm.loadMonthsBySeason(s);
    return Scaffold(
      appBar: AppBar(
        title: Text(s.seasonName),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Column(
                children: List.generate(seasonMonths.length, (mIndex) {
                  return Column(
                    children: [
                      Text(s.months[mIndex].monthName),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: List.generate(3, (sIndex) {
                          monthStars =
                              starvm.loadStarsByMonth(s.months[mIndex]);
                          return Expanded(
                              child: Column(
                                children: [
                                  SizedBox(height: 50,
                                    child: Card(
                                        child: Center(
                                            child: Text(
                                                monthStars[sIndex].starName))),
                                  ),
                                
                                ],
                              ));
                        }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.greenAccent,
                                  Colors.teal[200]!,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight)),
                                child: Text(s.months[mIndex].crops),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
