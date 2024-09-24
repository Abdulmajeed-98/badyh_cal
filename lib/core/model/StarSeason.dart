class StarSeason {
  final int starSeasonID;
  final int starID;
  final int seasonID;

  StarSeason({required this.starSeasonID, required this.starID, required this.seasonID});

  factory StarSeason.fromJson(Map<String, dynamic> json) {
    return StarSeason(
      starSeasonID: json['StarSeasonID'],
      starID: json['StarID'],
      seasonID: json['SeasonID'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'StarSeasonID': starSeasonID,
      'StarID': starID,
      'SeasonID': seasonID,
    };
  }
}
