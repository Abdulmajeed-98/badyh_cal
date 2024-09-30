import 'package:badiyh_calendar/core/model/BeeKeepingPhase.dart';

class BeeCalendarVM {
  int phaseID;
  String phaseName;
  String startDate;
  String endDate;
  String description;
  List<StarViewModel> stars;

  BeeCalendarVM({
    required this.phaseID,
    required this.phaseName,
    required this.startDate,
    required this.endDate,
    required this.description,
    required this.stars,
  });

  factory BeeCalendarVM.fromBeeCalendar(BeeCalendar model) {
    return BeeCalendarVM(
      phaseID: model.phaseID ?? 0,
      phaseName: model.phaseName ?? 'Unknown Phase',
      startDate: model.startDate ?? 'N/A',
      endDate: model.endDate ?? 'N/A',
      description: model.description ?? 'No Description',
      stars: model.stars?.map((star) => StarViewModel.fromStar(star)).toList() ?? [],
    );
  }
}

class StarViewModel {
  int starID;
  String starName;
  String startDate;
  String endDate;
  int seasonID;
  int duration;

  StarViewModel({
    required this.starID,
    required this.starName,
    required this.startDate,
    required this.endDate,
    required this.seasonID,
    required this.duration,
  });

  factory StarViewModel.fromStar(Stars model) {
    return StarViewModel(
      starID: model.starID ?? 0,
      starName: model.starName ?? 'Unknown Star',
      startDate: model.startDate ?? 'N/A',
      endDate: model.endDate ?? 'N/A',
      seasonID: model.seasonID ?? 0,
      duration: model.duration ?? 0,
    );
  }
}
