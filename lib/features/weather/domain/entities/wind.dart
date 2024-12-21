import 'package:flutter/foundation.dart';

/// Wind
/// 
/// Represents wind data with various attributes.
/// 
/// Properties:
/// - [speed]: The wind speed.
/// - [deg]: The wind direction in degrees.
/// - [gust]: The wind gust speed.
/// 
/// Methods:
/// - [fromJson]: Creates a [Wind] instance from a JSON object.
/// 
/// Author: Gonzalo Quedena
@immutable
class Wind {
  /// The wind speed.
  final double speed;

  /// The wind direction in degrees.
  final int deg;

  /// The wind gust speed.
  final double gust;

  /// Constructs a [Wind] instance.
  const Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  /// Creates a [Wind] instance from a JSON object.
  ///
  /// Parameters:
  /// - [json]: A map containing the JSON data.
  ///
  /// Returns:
  /// - A [Wind] instance.
  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: json['speed'].toDouble(),
      deg: json['deg'],
      gust: json['gust'].toDouble(),
    );
  }
}