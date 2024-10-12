void main() {
  // Get the current date
  DateTime now = DateTime.now();

  // Calculate the day of the year
  int dayOfYear = now.day + (DateTime(now.year, now.month).day - 1);

  for (int month = 1; month < now.month; month++) {
    dayOfYear += DateTime(now.year, month + 1, 0).day; // Days in each month
  }

  print("Today is day number $dayOfYear of the year ${now.year}.");
}