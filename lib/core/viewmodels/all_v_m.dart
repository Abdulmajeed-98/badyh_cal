// import 'package:badiyh_calendar_two/core/model/all_models.dart';

// class StarViewModel {
//   Stars star;

//   StarViewModel({required this.star});

//   // Getter for the star name
//   String get starName => star.starName;

//   // Example: Get the formatted date range
//   String getFormattedDateRange() {
//     return '${star.startDate} - ${star.endDate}';
//   }

//   // Check if star is within a specific duration
//   bool isStarWithinDuration(int days) {
//     return star.duration <= days;
//   }
// }

// class MonthViewModel {
//   Months month;

//   MonthViewModel({required this.month});

//   // Getter for the month name
//   String get monthName => month.monthName;

//   // Get the number of stars in this month
//   int get starsCount => month.stars.length;

//   // Example: Get all star names in this month
//   List<String> getStarNames() {
//     return month.stars.map((star) => star.starName).toList();
//   }

//   // Example: Get total duration of all stars in the month
//   int getTotalStarDuration() {
//     return month.stars.fold(0, (sum, star) => sum + star.duration);
//   }
// }

// class SeasonViewModel {
//   Seasons season;
//   SeasonViewModel({required this.season});

//   // Getter for the season name
//   String get seasonName => season.seasonName;

//   // Get the number of months in this season
//   int get monthsCount => season.months.length;

//   // Example: Get all month names in this season
//   List<String> getMonthNames() {
//     return season.months.map((month) => month.monthName).toList();
//   }

//   // Example: Get total number of stars across all months
//   int getTotalStarsInSeason() {
//     return season.months.fold(0, (sum, month) => sum + month.stars.length);
//   }
// }
