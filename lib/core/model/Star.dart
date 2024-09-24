class Star {
  final int starID;
  final String starName;
  final DateTime startDate;
  final DateTime endDate;
  final int seasonID;
  final int duration;

  Star({required this.starID, required this.starName, required this.startDate, required this.endDate, required this.seasonID, required this.duration});

  factory Star.fromJson(Map<String, dynamic> json) {
    return Star(
      starID: json['StarID'],
      starName: json['StarName'],
      startDate: DateTime.parse(json['StartDate']),
      endDate: DateTime.parse(json['EndDate']),
      seasonID: json['SeasonID'],
      duration: json['Duration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'StarID': starID,
      'StarName': starName,
      'StartDate': startDate.toIso8601String(),
      'EndDate': endDate.toIso8601String(),
      'SeasonID': seasonID,
      'Duration': duration,
    };
  }
}
