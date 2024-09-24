import 'package:badiyh_calendar/core/model/Crop.dart';
import 'package:badiyh_calendar/core/model/Star.dart';
import 'package:badiyh_calendar/core/view_model/CropVM.dart';

class StarVM {
  final int starID;
  final String starName;
  final DateTime startDate;
  final DateTime endDate;
  final int seasonID;
  final int duration;
  List<CropVM> crops; // قائمة المحاصيل المرتبطة بهذا النجم

  StarVM({required this.starID, required this.starName, required this.startDate, required this.endDate, required this.seasonID, required this.duration, required this.crops});

  factory StarVM.fromStar(Star star, {List<Crop>? crops}) {
    return StarVM(
      starID: star.starID,
      starName: star.starName,
      startDate: star.startDate,
      endDate: star.endDate,
      seasonID: star.seasonID,
      duration: star.duration,
      crops: crops?.map((crop) => CropVM.fromCrop(crop)).toList() ?? [],
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
      'Crops': crops.map((crop) => crop.toJson()).toList(),
    };
  }
}
