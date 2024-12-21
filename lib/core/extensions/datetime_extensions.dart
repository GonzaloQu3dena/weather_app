import 'package:jiffy/jiffy.dart';

/// FormatDateTime extension on DateTime
/// 
/// This file contains the extension methods for the DateTime class.
/// 
/// Extensions:
/// - dateTime: returns the date in the format 'yMMMMd'.
/// 
/// Author: Gonzalo Quedena
extension FormatDateTime on DateTime {
  String get dateTime =>
      Jiffy.parseFromDateTime(this).format(pattern: 'yMMMMd');
}

/// DayOfWeek extension on DateTime
/// 
/// This file contains the extension methods for the DateTime class.
/// 
/// Extensions:
/// - dayOfWeek: returns the day of the week.
/// 
/// Author: Gonzalo Quedena
extension DayOfWeek on DateTime {
  String get dayOfWeek => 
      Jiffy.parseFromDateTime(this).format(pattern: 'EEEE');
}