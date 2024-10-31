class BeeCalendar {
  int? phaseID;
  String? phaseName;
  String? startDate;
  String? endDate;
  String? description;
  List<StarsBee>? stars;

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
      stars = <StarsBee>[];
      json['stars'].forEach((v) {
        stars!.add(StarsBee.fromJson(v));
      });
    }
  }
}

// النجوم في حدول النحل..
class StarsBee {
  int? starID;
  String? starName;
  String? startDate;
  String? endDate;
  int? seasonID;
  int? duration;

  StarsBee(
      {this.starID,
      this.starName,
      this.startDate,
      this.endDate,
      this.seasonID,
      this.duration});

  StarsBee.fromJson(Map<String, dynamic> json) {
    starID = json['StarID'];
    starName = json['StarName'];
    startDate = json['StartDate'];
    endDate = json['EndDate'];
    //  startDate: DateTime.parse(json['StartDate']),
    // endDate: DateTime.parse(json['EndDate']),
    seasonID = json['SeasonID'];
    duration = json['Duration'];
  }
}
