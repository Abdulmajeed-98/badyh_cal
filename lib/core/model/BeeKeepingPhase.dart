class BeeKeepingPhase {
  final int phaseID;
  final String phaseName;
  final DateTime startDate;
  final DateTime endDate;
  final String description;
  final String relatedStars;

  BeeKeepingPhase({required this.phaseID, required this.phaseName, required this.startDate, required this.endDate, required this.description, required this.relatedStars});

  factory BeeKeepingPhase.fromJson(Map<String, dynamic> json) {
    return BeeKeepingPhase(
      phaseID: json['PhaseID'],
      phaseName: json['PhaseName'],
      startDate: DateTime.parse(json['StartDate']),
      endDate: DateTime.parse(json['EndDate']),
      description: json['Description'],
      relatedStars: json['RelatedStars'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'PhaseID': phaseID,
      'PhaseName': phaseName,
      'StartDate': startDate.toIso8601String(),
      'EndDate': endDate.toIso8601String(),
      'Description': description,
      'RelatedStars': relatedStars,
    };
  }
}
