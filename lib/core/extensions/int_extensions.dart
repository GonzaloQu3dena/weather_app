import 'package:jiffy/jiffy.dart';

/// Convert timestamp to time extension on int
/// 
/// This file contains the extension methods for the int class.
/// 
/// Extensions:
/// - time: returns the time in the format 'Hm'.
/// - dateTime: returns the date in the format 'yMMMMd'.
/// 
/// Author: Gonzalo Quedena
extension ConvertTimestampToTime on int {
  String get time =>
      Jiffy.parseFromMillisecondsSinceEpoch(this * 1000).format(pattern: 'Hm');

  String get dateTime => Jiffy.parseFromMillisecondsSinceEpoch(this * 1000)
      .format(pattern: 'yMMMMd');
}