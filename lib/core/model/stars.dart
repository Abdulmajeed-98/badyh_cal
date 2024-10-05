// class Stars {
//   late int starID;
//   late String starName;
//   late String startDate;
//   late String endDate;
//   late int seasonID;
//   late int duration;

//   Stars(
//       {required this.starID,
//       required this.starName,
//       required this.startDate,
//       required this.endDate,
//       required this.seasonID,
//       required this.duration});

//   Stars.fromMap(Map<String, dynamic> json) {
//     starID = json['StarID'];
//     starName = json['StarName'];
//     startDate = json['StartDate'];
//     endDate = json['EndDate'];
//     seasonID = json['SeasonID'];
//     duration = json['Duration'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['StarID'] = this.starID;
//     data['StarName'] = this.starName;
//     data['StartDate'] = this.startDate;
//     data['EndDate'] = this.endDate;
//     data['SeasonID'] = this.seasonID;
//     data['Duration'] = this.duration;
//     return data;
//   }
// }
