class Season {
  final int seasonID;
  final String seasonName;

  Season({required this.seasonID, required this.seasonName});

  factory Season.fromJson(Map<String, dynamic> json) {
    return Season(
      seasonID: json['SeasonID'],
      seasonName: json['SeasonName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'SeasonID': seasonID,
      'SeasonName': seasonName,
    };
  }
}
