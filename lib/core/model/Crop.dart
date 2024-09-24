class Crop {
  final int cropID;
  final String cropName;
  final int starID;
  final String plantingInstructions;

  Crop({required this.cropID, required this.cropName, required this.starID, required this.plantingInstructions});

  factory Crop.fromJson(Map<String, dynamic> json) {
    return Crop(
      cropID: json['CropID'],
      cropName: json['CropName'],
      starID: json['StarID'],
      plantingInstructions: json['PlantingInstructions'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'CropID': cropID,
      'CropName': cropName,
      'StarID': starID,
      'PlantingInstructions': plantingInstructions,
    };
  }
}
