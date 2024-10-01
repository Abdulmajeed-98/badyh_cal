// class Seasons {
//   late int seasonID;
//   late String seasonName;
//   late List monthID;

//   Seasons({required this.seasonID, required this.seasonName,required this.monthID});

//   Seasons.fromMap(Map<String, dynamic> json) {
//     seasonID = json['SeasonID'];
//     seasonName = json['SeasonName'];
//     monthID = json['monthID'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['SeasonID'] = this.seasonID;
//     data['SeasonName'] = this.seasonName;
//     data['monthID'];
//     return data;
//   }
// }