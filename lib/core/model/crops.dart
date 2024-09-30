class Crops {
  late int cropID;
  late String cropName;
  late int starID;
  late String plantingInstructions;

  Crops({required this.cropID, required this.cropName, required this.starID, required this.plantingInstructions});

  Crops.fromMap(Map<String, dynamic> json) {
    cropID = json['CropID'];
    cropName = json['CropName'];
    starID = json['StarID'];
    plantingInstructions = json['PlantingInstructions'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CropID'] = this.cropID;
    data['CropName'] = this.cropName;
    data['StarID'] = this.starID;
    data['PlantingInstructions'] = this.plantingInstructions;
    return data;
  }
}
