import 'package:badiyh_calendar/db/edit_calender_db.dart';
import 'package:flutter/material.dart';

class Stars {
  int? starID;
  String? starName;
  String? startDate;
  String? endDate;
  int? seasonID;
  int? duration;

  Stars({
    this.starID,
    this.starName,
    this.startDate,
    this.endDate,
    this.seasonID,
    this.duration,
  });

  Stars.fromJson(Map<String, dynamic> json) {
    starID = json['StarID'];
    starName = json['StarName'];
    startDate = json['StartDate'];
    endDate = json['EndDate'];
    seasonID = json['SeasonID'];
    duration = json['Duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['StarID'] = starID;
    data['StarName'] = starName;
    data['StartDate'] = startDate;
    data['EndDate'] = endDate;
    data['SeasonID'] = seasonID;
    data['Duration'] = duration;
    return data;
  }
}

class StarsViewModel {
  List<Stars> loadAllStars() {
    EditCalenderDb db = EditCalenderDb();
    List<dynamic> calenderDb = db.editCalender;
    List<Stars> allStars = [];

    for (var season in calenderDb) {
      for (var month in season["months"]) {
        for (var star in month['stars']) {
          allStars.add(Stars.fromJson(star));
        }
      }
    }

    return allStars;
  }
  // List<Stars> loadAllStars() {
  //   List<dynamic> jsonData = [
  //     {
  //     "SeasonID": 1,
  //     "SeasonName": "الربيع",
  //     "months": [
  //       {
  //         "monthID": 1,
  //         "monthName": "January",
  //         "monthNum": 1,
  //         "seasonsID": 1,
  //         "crops":
  //             "زراعة القرعيات حبحب - شمام - بطيخ - دبا - زراعة البقل - تفخيط النخيل - تقليم العنب - زراعة البصل الصيفي",
  //         "stars": [
  //           {
  //             "StarID": 1,
  //             "StarName": "الهنعة",
  //             "StartDate": "2024-01-01",
  //             "EndDate": "2024-01-13",
  //             "SeasonID": 1,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 2,
  //             "StarName": "الذراع",
  //             "StartDate": "2024-01-14",
  //             "EndDate": "2024-01-26",
  //             "SeasonID": 1,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 3,
  //             "StarName": "النثرة",
  //             "StartDate": "2024-01-27",
  //             "EndDate": "2024-02-08",
  //             "SeasonID": 1,
  //             "Duration": 13
  //           }
  //         ]
  //       },
  //       {
  //         "monthID": 2,
  //         "monthName": "February",
  //         "monthNum": 2,
  //         "seasonsID": 1,
  //         "crops":
  //             "حصاد البصل الأحمر - حصاد البطاطس زراعة - البرسيم - زراعة الشمار - البقل - زراعة السمسم والدجر الأبيض والأسود والكوبيش",
  //         "stars": [
  //           {
  //             "StarID": 3,
  //             "StarName": "النثرة",
  //             "StartDate": "2024-01-27",
  //             "EndDate": "2024-02-08",
  //             "SeasonID": 1,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 4,
  //             "StarName": "الطرف",
  //             "StartDate": "2024-02-09",
  //             "EndDate": "2024-02-21",
  //             "SeasonID": 1,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 5,
  //             "StarName": "الجبهة",
  //             "StartDate": "2024-02-22",
  //             "EndDate": "2024-03-06",
  //             "SeasonID": 1,
  //             "Duration": 13
  //           }
  //         ]
  //       },
  //       {
  //         "monthID": 3,
  //         "monthName": "March",
  //         "monthNum": 3,
  //         "seasonsID": 1,
  //         "crops": "زراعة الذرة والبرسيم والشمار وحصاد القمح و الثوم",
  //         "stars": [
  //           {
  //             "StarID": 5,
  //             "StarName": "الجبهة",
  //             "StartDate": "2024-02-22",
  //             "EndDate": "2024-03-06",
  //             "SeasonID": 1,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 6,
  //             "StarName": "الزبرة",
  //             "StartDate": "2024-03-07",
  //             "EndDate": "2024-03-19",
  //             "SeasonID": 1,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 7,
  //             "StarName": "الصرفة",
  //             "StartDate": "2024-03-20",
  //             "EndDate": "2024-04-01",
  //             "SeasonID": 1,
  //             "Duration": 13
  //           }
  //         ]
  //       }
  //     ]
  //   },
  //   {
  //     "SeasonID": 2,
  //     "SeasonName": "الصيف",
  //     "months": [
  //       {
  //         "monthID": 4,
  //         "monthName": "April",
  //         "monthNum": 4,
  //         "seasonsID": 2,
  //         "crops": "زراعة الضدح - حصاد الثوم - توضيع النخل",
  //         "stars": [
  //           {
  //             "StarID": 8,
  //             "StarName": "العواء",
  //             "StartDate": "2024-04-01",
  //             "EndDate": "2024-04-13",
  //             "SeasonID": 2,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 9,
  //             "StarName": "السماك",
  //             "StartDate": "2024-04-14",
  //             "EndDate": "2024-04-26",
  //             "SeasonID": 2,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 10,
  //             "StarName": "الغفر",
  //             "StartDate": "2024-04-27",
  //             "EndDate": "2024-05-09",
  //             "SeasonID": 2,
  //             "Duration": 13
  //           },
  //         ]
  //       },
  //       {
  //         "monthID": 5,
  //         "monthName": "May",
  //         "monthNum": 5,
  //         "seasonsID": 2,
  //         "crops":
  //             "جني القرعيات حبحب - شمام - جني الليم الحامض - زراعة الضدح تكوين ثمار النخيل",
  //         "stars": [
  //           {
  //             "StarID": 10,
  //             "StarName": "الغفر",
  //             "StartDate": "2024-04-27",
  //             "EndDate": "2024-05-09",
  //             "SeasonID": 2,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 11,
  //             "StarName": "الزبان",
  //             "StartDate": "2024-05-10",
  //             "EndDate": "2024-05-22",
  //             "SeasonID": 2,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 12,
  //             "StarName": "إكليل",
  //             "StartDate": "2024-05-23",
  //             "EndDate": "2024-06-04",
  //             "SeasonID": 2,
  //             "Duration": 13
  //           }
  //         ]
  //       },
  //       {
  //         "monthID": 6,
  //         "monthName": "June",
  //         "monthNum": 6,
  //         "seasonsID": 2,
  //         "crops":
  //             "جني البصل الصيفي - حصاد الذرة - تخبير النخيل - زراعة الضدح والدبَّا الأسود والأبيض",
  //         "stars": [
  //           {
  //             "StarID": 12,
  //             "StarName": "إكليل",
  //             "StartDate": "2024-05-23",
  //             "EndDate": "2024-06-04",
  //             "SeasonID": 2,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 13,
  //             "StarName": "القلب",
  //             "StartDate": "2024-06-05",
  //             "EndDate": "2024-06-17",
  //             "SeasonID": 2,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 14,
  //             "StarName": "الشول",
  //             "StartDate": "2024-06-18",
  //             "EndDate": "2024-06-30",
  //             "SeasonID": 2,
  //             "Duration": 13
  //           }
  //         ]
  //       },
  //     ]
  //   },
  //   {
  //     "SeasonID": 3,
  //     "SeasonName": "الخريف",
  //     "months": [
  //       {
  //         "monthID": 7,
  //         "monthName": "July",
  //         "monthNum": 7,
  //         "seasonsID": 3,
  //         "crops":
  //             "زراعة الدرة الشتوية - جني ثمار النخيل والسمسم - زراعة مشتل البصل",
  //         "stars": [
  //           {
  //             "StarID": 15,
  //             "StarName": "النعائم",
  //             "StartDate": "2024-07-01",
  //             "EndDate": "2024-07-13",
  //             "SeasonID": 3,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 16,
  //             "StarName": "البلدة",
  //             "StartDate": "2024-07-14",
  //             "EndDate": "2024-07-26",
  //             "SeasonID": 3,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 17,
  //             "StarName": "المرزم",
  //             "StartDate": "2024-07-27",
  //             "EndDate": "2024-08-08",
  //             "SeasonID": 3,
  //             "Duration": 13
  //           }
  //         ]
  //       },
  //       {
  //         "monthID": 8,
  //         "monthName": "August",
  //         "monthNum": 8,
  //         "seasonsID": 3,
  //         "crops":
  //             "زراعة الطماطم - زراعة البصل - استمرار حبس البصل - زراعة حبس طماطم - راعة طماطم دري محمله",
  //         "stars": [
  //           {
  //             "StarID": 17,
  //             "StarName": "المرزم",
  //             "StartDate": "2024-07-27",
  //             "EndDate": "2024-08-08",
  //             "SeasonID": 3,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 18,
  //             "StarName": "سهيل",
  //             "StartDate": "2024-08-09",
  //             "EndDate": "2024-08-21",
  //             "SeasonID": 3,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 19,
  //             "StarName": "باعريق",
  //             "StartDate": "2024-08-22",
  //             "EndDate": "2024-09-03",
  //             "SeasonID": 3,
  //             "Duration": 13
  //           }
  //         ]
  //       },
  //       {
  //         "monthID": 9,
  //         "monthName": "September",
  //         "monthNum": 9,
  //         "seasonsID": 3,
  //         "crops": "حصاد البصل الأخضر - زراعة الجزر - والبرسيم - والشمار",
  //         "stars": [
  //           {
  //             "StarID": 19,
  //             "StarName": "باعريق",
  //             "StartDate": "2024-08-22",
  //             "EndDate": "2024-09-03",
  //             "SeasonID": 3,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 20,
  //             "StarName": "سعد(خباء)",
  //             "StartDate": "2024-09-04",
  //             "EndDate": "2024-09-16",
  //             "SeasonID": 3,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 21,
  //             "StarName": "الفرغ",
  //             "StartDate": "2024-09-17",
  //             "EndDate": "2024-09-29",
  //             "SeasonID": 3,
  //             "Duration": 13
  //           }
  //         ]
  //       },
  //     ]
  //   },
  //   {
  //     "SeasonID": 4,
  //     "SeasonName": "الشتاء",
  //     "months": [
  //       {
  //         "monthID": 10,
  //         "monthName": "October",
  //         "monthNum": 10,
  //         "seasonsID": 4,
  //         "crops":
  //             "موعد تصويم أشجار الليم - زراعة البطاطس والحلف والحيدوان والحبة السوداء والقمح وموعد زراعة البصل والثوم والزموتة والبرسيم والكراث والكمون الارضية والشبرم والحلبة والشمار والبقل وتبالة البقل والبصل",
  //         "stars": [
  //           {
  //             "StarID": 22,
  //             "StarName": "الدلو",
  //             "StartDate": "2024-10-01",
  //             "EndDate": "2024-10-13",
  //             "SeasonID": 4,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 23,
  //             "StarName": "الحوت",
  //             "StartDate": "2024-10-14",
  //             "EndDate": "2024-10-26",
  //             "SeasonID": 4,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 24,
  //             "StarName": "النطح",
  //             "StartDate": "2024-10-27",
  //             "EndDate": "2024-11-08",
  //             "SeasonID": 4,
  //             "Duration": 13
  //           }
  //         ]
  //       },
  //       {
  //         "monthID": 11,
  //         "monthName": "November",
  //         "monthNum": 11,
  //         "seasonsID": 4,
  //         "crops":
  //             "زراعة قمح الكليانسونا - والحلف - والزموتة والكراث والكمون - والشبرم - والحلبة والبقل - والحيدوان - وجني الطماطم وحصاد الدرة الشتوية",
  //         "stars": [
  //           {
  //             "StarID": 24,
  //             "StarName": "النطح",
  //             "StartDate": "2024-10-27",
  //             "EndDate": "2024-11-08",
  //             "SeasonID": 4,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 25,
  //             "StarName": "البطين",
  //             "StartDate": "2024-11-09",
  //             "EndDate": "2024-11-21",
  //             "SeasonID": 4,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 26,
  //             "StarName": "الثريا",
  //             "StartDate": "2024-11-22",
  //             "EndDate": "2024-12-04",
  //             "SeasonID": 4,
  //             "Duration": 13
  //           }
  //         ]
  //       },
  //       {
  //         "monthID": 12,
  //         "monthName": "December",
  //         "monthNum": 12,
  //         "seasonsID": 4,
  //         "crops":
  //             "قلع البصل -  والجزر -  وبدء ظهور الطلع في النخيل - وزراعة الحلف والشبرم - والبقل",
  //         "stars": [
  //           {
  //             "StarID": 26,
  //             "StarName": "الثريا",
  //             "StartDate": "2024-11-22",
  //             "EndDate": "2024-12-04",
  //             "SeasonID": 4,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 27,
  //             "StarName": "البركان",
  //             "StartDate": "2024-12-05",
  //             "EndDate": "2024-12-17",
  //             "SeasonID": 4,
  //             "Duration": 13
  //           },
  //           {
  //             "StarID": 28,
  //             "StarName": "الهقعة",
  //             "StartDate": "2024-12-18",
  //             "EndDate": "2024-12-30",
  //             "SeasonID": 4,
  //             "Duration": 13
  //           }
  //         ]
  //       }
  //     ]
  //   }
  //   ];

  //   List<Stars> allStars = [];
  //   for (var season in jsonData) {
  //     for (var month in season['months']) {
  //       for (var star in month['stars']) {
  //         allStars.add(Stars.fromJson(star));
  //       }
  //     }
  //   }
  //   return allStars;
  // }

}

class StarsScreen extends StatelessWidget {
  final StarsViewModel viewModel = StarsViewModel();

  StarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Stars> starsList = viewModel.loadAllStars();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stars List'),
      ),
      body: ListView.builder(
        itemCount: starsList.length,
        itemBuilder: (context, index) {
          Stars star = starsList[index];
          return ListTile(
            title: Text(star.starName ?? ''),
            subtitle: Text(
              'Start: ${star.startDate} - End: ${star.endDate}',
            ),
            trailing: Text('Duration: ${star.duration} days'),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: StarsScreen(),
  ));
}
