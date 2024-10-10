class BeeCalendar {
  int? phaseID;
  String? phaseName;
  String? startDate;
  String? endDate;
  String? description;
  List<Stars>? stars;

  BeeCalendar(
      {this.phaseID,
      this.phaseName,
      this.startDate,
      this.endDate,
      this.description,
      this.stars});

  BeeCalendar.fromJson(Map<String, dynamic> json) {
    phaseID = json['PhaseID'];
    phaseName = json['PhaseName'];
    startDate = json['StartDate'];
    endDate = json['EndDate'];
    description = json['Description'];
    if (json['stars'] != null) {
      stars = <Stars>[];
      json['stars'].forEach((v) {
        stars!.add(Stars.fromJson(v));
      });
    }
  }
// not required...
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['PhaseID'] = this.phaseID;
  //   data['PhaseName'] = this.phaseName;
  //   data['StartDate'] = this.startDate;
  //   data['EndDate'] = this.endDate;
  //   data['Description'] = this.description;
  //   if (this.stars != null) {
  //     data['stars'] = this.stars!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
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
    //  startDate: DateTime.parse(json['StartDate']),
    // endDate: DateTime.parse(json['EndDate']),
    seasonID = json['SeasonID'];
    duration = json['Duration'];
  }
// not required...
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['StarID'] = this.starID;
  //   data['StarName'] = this.starName;
  //   data['StartDate'] = this.startDate;
  //   data['EndDate'] = this.endDate;
  //   data['SeasonID'] = this.seasonID;
  //   data['Duration'] = this.duration;
  //   return data;
  // }
}
