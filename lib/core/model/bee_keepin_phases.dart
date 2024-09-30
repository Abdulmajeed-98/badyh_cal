class BeeKeepingPhases {
  late int phaseID;
  late String phaseName;
  late String startDate;
  late String endDate;
  late String description;
  late String relatedStars;

  BeeKeepingPhases(
      {required this.phaseID,
      required this.phaseName,
      required this.startDate,
      required this.endDate,
      required this.description,
      required this.relatedStars});

  BeeKeepingPhases.fromMap(Map<String, dynamic> json) {
    phaseID = json['PhaseID'];
    phaseName = json['PhaseName'];
    startDate = json['StartDate'];
    endDate = json['EndDate'];
    description = json['Description'];
    relatedStars = json['RelatedStars'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PhaseID'] = this.phaseID;
    data['PhaseName'] = this.phaseName;
    data['StartDate'] = this.startDate;
    data['EndDate'] = this.endDate;
    data['Description'] = this.description;
    data['RelatedStars'] = this.relatedStars;
    return data;
  }
}
