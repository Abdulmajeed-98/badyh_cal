import 'package:badiyh_calendar/core/model/Crop.dart';

class CropVM {
  final int cropID;
  final String cropName;
  final int starID;
  final String plantingInstructions;

  CropVM({required this.cropID, required this.cropName, required this.starID, required this.plantingInstructions});

  factory CropVM.fromCrop(Crop crop) {
    return CropVM(
      cropID: crop.cropID,
      cropName: crop.cropName,
      starID: crop.starID,
      plantingInstructions: crop.plantingInstructions,
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
