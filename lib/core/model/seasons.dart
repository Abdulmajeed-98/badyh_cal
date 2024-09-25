class Seasons {
  int? seasonID;
  String? seasonName;

  Seasons({this.seasonID, this.seasonName});

  Seasons.fromJson(Map<String, dynamic> json) {
    seasonID = json['SeasonID'];
    seasonName = json['SeasonName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SeasonID'] = this.seasonID;
    data['SeasonName'] = this.seasonName;
    return data;
  }
}