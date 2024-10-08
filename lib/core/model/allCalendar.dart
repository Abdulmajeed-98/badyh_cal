class AllCalendar {
  int? seasonID;
  String? seasonName;
  List<Months>? months;

  AllCalendar({this.seasonID, this.seasonName, this.months});

  AllCalendar.fromJson(Map<String, dynamic> json) {
    seasonID = json['SeasonID'];
    seasonName = json['SeasonName'];
    if (json['months'] != null) {
      months = <Months>[];
      json['months'].forEach((v) {
        months!.add(new Months.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SeasonID'] = this.seasonID;
    data['SeasonName'] = this.seasonName;
    if (this.months != null) {
      data['months'] = this.months!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Months {
  int? monthID;
  String? monthName;
  int? monthNum;
  int? seasonsID;
  String? crops;
  List<Stars>? stars;

  Months(
      {this.monthID,
      this.monthName,
      this.monthNum,
      this.seasonsID,
      this.crops,
      this.stars});

  Months.fromJson(Map<String, dynamic> json) {
    monthID = json['monthID'];
    monthName = json['monthName'];
    monthNum = json['monthNum'];
    seasonsID = json['seasonsID'];
    crops = json['crops'];
    if (json['stars'] != null) {
      stars = <Stars>[];
      json['stars'].forEach((v) {
        stars!.add(new Stars.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['monthID'] = this.monthID;
    data['monthName'] = this.monthName;
    data['monthNum'] = this.monthNum;
    data['seasonsID'] = this.seasonsID;
    data['crops'] = this.crops;
    if (this.stars != null) {
      data['stars'] = this.stars!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Stars {
  int? starID;
  String? starName;
  String? startDate;
  String? endDate;
  int? seasonID;
  int? duration;

  Stars(
      {this.starID,
      this.starName,
      this.startDate,
      this.endDate,
      this.seasonID,
      this.duration});

  Stars.fromJson(Map<String, dynamic> json) {
    starID = json['StarID'];
    starName = json['StarName'];
    startDate = json['StartDate'];
    endDate = json['EndDate'];
    seasonID = json['SeasonID'];
    duration = json['Duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StarID'] = this.starID;
    data['StarName'] = this.starName;
    data['StartDate'] = this.startDate;
    data['EndDate'] = this.endDate;
    data['SeasonID'] = this.seasonID;
    data['Duration'] = this.duration;
    return data;
  }
}
