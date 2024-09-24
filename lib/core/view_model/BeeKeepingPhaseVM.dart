import 'package:badiyh_calendar/core/model/BeeKeepingPhase.dart';

class BeeKeepingPhaseVM {
  final int phaseID;
  final String phaseName;
  final DateTime startDate;
  final DateTime endDate;
  final String description;
  final String relatedStars;

  BeeKeepingPhaseVM({required this.phaseID, required this.phaseName, required this.startDate, required this.endDate, required this.description, required this.relatedStars});

  factory BeeKeepingPhaseVM.fromBeeKeepingPhase(BeeKeepingPhase phase) {
    return BeeKeepingPhaseVM(
      phaseID: phase.phaseID,
      phaseName: phase.phaseName,
      startDate: phase.startDate,
      endDate: phase.endDate,
      description: phase.description,
      relatedStars: phase.relatedStars,
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
