class Month {
  int? monthID;
  String? monthName;
  int? monthNumber;
  String? season;
  List<String>? stars;

  Month({
    required this.monthID,
    required this.monthName,
    required this.monthNumber,
    required this.season,
    required this.stars,
  });

  Month.fromJson(Map<String, dynamic> json) {
    monthID = json['monthID'];
    monthName = json['monthName'];
    monthNumber = json['monthNumber'];
    season = json['season'];
    stars = List<String>.from(json['stars']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['monthID'] = monthID;
    data['monthName'] = monthName;
    data['monthNumber'] = monthNumber;
    data['season'] = season;
    data['stars'] = stars;
    return data;
  }
}
