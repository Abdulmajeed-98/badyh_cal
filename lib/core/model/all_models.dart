class Seasons {
  late int seasonID;
  late String seasonName;
  late List<Months> months;

  Seasons(
      {required this.seasonID, required this.seasonName, required this.months});

  Seasons.fromMap(Map<String, dynamic> json) {
    seasonID = json['SeasonID'];
    seasonName = json['SeasonName'];
    months = <Months>[];
    json['months'].forEach((v) {
      months.add(Months.fromMap(v));
    });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['SeasonID'] = this.seasonID;
    data['SeasonName'] = this.seasonName;
    data['months'] = this.months.map((v) => v.toJson()).toList();
    return data;
  }
}

class Months {
  late int monthID;
  late String monthName;
  late int monthNum;
  late int seasonsID;
  late String crops;
  late List<Stars> stars;

  Months(
      {required this.monthID,
      required this.monthName,
      required this.monthNum,
      required this.seasonsID,
      required this.crops,
      required this.stars});

  Months.fromMap(Map<String, dynamic> json) {
    monthID = json['monthID'];
    monthName = json['monthName'];
    monthNum = json['monthNum'];
    seasonsID = json['seasonsID'];
    crops = json['crops'];
    stars = <Stars>[];
    json['stars'].forEach((v) {
      stars.add(Stars.fromMap(v));
    });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['monthID'] = this.monthID;
    data['monthName'] = this.monthName;
    data['monthNum'] = this.monthNum;
    data['seasonsID'] = this.seasonsID;
    data['crops'] = this.crops;
    data['stars'] = this.stars.map((v) => v.toJson()).toList();
    return data;
  }
}

class Stars {
  late int starID;
  late String starName;
  late String startDate;
  late String endDate;
  late int seasonID;
  late int duration;

  Stars(
      {required this.starID,
      required this.starName,
      required this.startDate,
      required this.endDate,
      required this.seasonID,
      required this.duration});

  Stars.fromMap(Map<String, dynamic> json) {
    starID = json['StarID'];
    starName = json['StarName'];
    startDate = json['StartDate'];
    endDate = json['EndDate'];
    seasonID = json['SeasonID'];
    duration = json['Duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['StarID'] = this.starID;
    data['StarName'] = this.starName;
    data['StartDate'] = this.startDate;
    data['EndDate'] = this.endDate;
    data['SeasonID'] = this.seasonID;
    data['Duration'] = this.duration;
    return data;
  }
}
