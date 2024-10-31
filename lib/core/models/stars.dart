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
