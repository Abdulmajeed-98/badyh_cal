// import 'package:badiyh_calendar/core/model/stars.dart';

// class AllCalendar {
//   int? seasonID;
//   String? seasonName;
//   List<Months>? months;

//   AllCalendar({this.seasonID, this.seasonName, this.months});

//   AllCalendar.fromJson(Map<String, dynamic> json) {
//     seasonID = json['SeasonID'];
//     seasonName = json['SeasonName'];
//     if (json['months'] != null) {
//       months = <Months>[];
//       json['months'].forEach((v) {
//         months!.add(Months.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['SeasonID'] = seasonID;
//     data['SeasonName'] = seasonName;
//     if (months != null) {
//       data['months'] = months!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Months {
//   int? monthID;
//   String? monthName;
//   int? monthNum;
//   int? seasonsID;
//   String? crops;
//   List<Stars>? stars;

//   Months(
//       {this.monthID,
//       this.monthName,
//       this.monthNum,
//       this.seasonsID,
//       this.crops,
//       this.stars});

//   Months.fromJson(Map<String, dynamic> json) {
//     monthID = json['monthID'];
//     monthName = json['monthName'];
//     monthNum = json['monthNum'];
//     seasonsID = json['seasonsID'];
//     crops = json['crops'];
//     if (json['stars'] != null) {
//       stars = <Stars>[];
//       json['stars'].forEach((v) {
//         stars!.add(Stars.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['monthID'] = monthID;
//     data['monthName'] = monthName;
//     data['monthNum'] = monthNum;
//     data['seasonsID'] = seasonsID;
//     data['crops'] = crops;
//     if (stars != null) {
//       data['stars'] = stars!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// // class Stars {
// //   int? starID;
// //   String? starName;
// //   String? startDate;
// //   String? endDate;
// //   int? seasonID;
// //   int? duration;

// //   Stars(
// //       {this.starID,
// //       this.starName,
// //       this.startDate,
// //       this.endDate,
// //       this.seasonID,
// //       this.duration});

// //   Stars.fromJson(Map<String, dynamic> json) {
// //     starID = json['StarID'];
// //     starName = json['StarName'];
// //     startDate = json['StartDate'];
// //     endDate = json['EndDate'];
// //     seasonID = json['SeasonID'];
// //     duration = json['Duration'];
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = <String, dynamic>{};
// //     data['StarID'] = starID;
// //     data['StarName'] = starName;
// //     data['StartDate'] = startDate;
// //     data['EndDate'] = endDate;
// //     data['SeasonID'] = seasonID;
// //     data['Duration'] = duration;
// //     return data;
// //   }
// // }
