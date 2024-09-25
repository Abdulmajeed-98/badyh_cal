class Crops {
  int? cropID;
  String? cropName;
  int? starID;
  String? plantingInstructions;

  Crops({this.cropID, this.cropName, this.starID, this.plantingInstructions});

  Crops.fromJson(Map<String, dynamic> json) {
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
