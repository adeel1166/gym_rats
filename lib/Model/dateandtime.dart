// date_time_model.dart
class DateTimeModel {
  DateTime date;
  DateTime time;

  DateTimeModel({required this.date, required this.time});

  // Optional: Add any methods or computed properties if needed
  String get formattedDate => "${date.year}-${date.month}-${date.day}";
  String get formattedTime => "${time.hour}:${time.minute}";
}
