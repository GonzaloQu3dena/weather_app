import 'package:flutter/foundation.dart';

/// WeatherCode
/// 
/// Represents a weather code with various attributes.
/// 
/// Properties:
/// - [id]: The unique identifier of the weather condition.
/// - [main]: The main weather condition.
/// - [description]: A description of the weather condition.
/// - [icon]: The icon representing the weather condition.
/// 
/// Methods:
/// - [fromJson]: Creates a [WeatherCode] instance from a JSON object.
/// 
/// Author: Gonzalo Quedena
@immutable
class WeatherCode {
  /// The unique identifier of the weather condition.
  final int id;

  /// The main weather condition.
  final String main;

  /// A description of the weather condition.
  final String description;

  /// The icon representing the weather condition.
  final String icon;

  /// Constructs a [WeatherCode] instance.
  ///
  /// Parameters:
  /// - [id]: The unique identifier of the weather condition.
  /// - [main]: The main weather condition.
  /// - [description]: A description of the weather condition.
  /// - [icon]: The icon representing the weather condition.
  const WeatherCode({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  /// Creates a [WeatherCode] instance from a JSON object.
  ///
  /// Parameters:
  /// - [json]: A map containing the JSON data.
  ///
  /// Returns:
  /// - A [WeatherCode] instance.
  factory WeatherCode.fromJson(Map<String, dynamic> json) {
    return WeatherCode(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );
  }
}