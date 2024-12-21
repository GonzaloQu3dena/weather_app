import 'package:flutter/foundation.dart';

/// Temperature
/// 
/// Represents temperature data with various attributes.
/// 
/// Properties:
/// - [temp]: The current temperature.
/// - [feelsLike]: The perceived temperature.
/// - [tempMin]: The minimum temperature.
/// - [tempMax]: The maximum temperature.
/// 
/// Methods:
/// - [fromJson]: Creates a [Temperature] instance from a JSON object.
/// 
/// Author: Gonzalo Quedena
@immutable
class Temperature {
  /// The current temperature.
  final double temp;

  /// The perceived temperature.
  final double feelsLike;

  /// The minimum temperature.
  final double tempMin;

  /// The maximum temperature.
  final double tempMax;

  /// Constructs a [Temperature] instance.
  const Temperature({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
  });

  /// Creates a [Temperature] instance from a JSON object.
  ///
  /// Parameters:
  /// - [json]: A map containing the JSON data.
  ///
  /// Returns:
  /// - A [Temperature] instance.
  factory Temperature.fromJson(Map<String, dynamic> json) {
    return Temperature(
      temp: json['temp'].toDouble(),
      feelsLike: json['feels_like'].toDouble(),
      tempMin: json['temp_min'].toDouble(),
      tempMax: json['temp_max'].toDouble(),
    );
  }
}