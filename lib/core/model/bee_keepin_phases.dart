class BeeKeepingPhases {
  int? phaseID;
  String? phaseName;
  String? startDate;
  String? endDate;
  String? description;
  String? relatedStars;

  BeeKeepingPhases(
      {this.phaseID,
      this.phaseName,
      this.startDate,
      this.endDate,
      this.description,
      this.relatedStars});

  BeeKeepingPhases.fromJson(Map<String, dynamic> json) {
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
