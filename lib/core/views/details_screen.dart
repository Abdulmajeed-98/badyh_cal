import 'package:badiyh_calendar/core/model/months.dart';
import 'package:badiyh_calendar/core/model/seasons.dart';
import 'package:badiyh_calendar/core/viewmodels/month_v_m.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  late Seasons s;
  DetailsScreen({Key? key, required this.s}) : super(key: key);
  MonthVM mvm = MonthVM();
  late List<Months> allMonths;
  @override
  Widget build(BuildContext context) {
    allMonths = mvm.loadAllMonths();
    return Scaffold(
      appBar: AppBar(
        title: Text(s.seasonName),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: s.monthID.length,
                  itemBuilder: (ctx,index){
                      return ListTile(
                        onTap: () => Navigator.pushNamed(ctx,'/stars',arguments: allMonths[index]),
                        title: Text(allMonths[s.monthID[index]-1].monthName));
                  })
              ),
            ],
          ),
        ),
      ),
    );
  }
}
