import 'package:flutter/material.dart';

/// Weather Data
/// 
/// Represents weather data with various attributes.
/// 
/// Properties:
/// - [id]: The unique identifier of the weather condition.
/// - [main]: The main weather condition.
/// - [description]: A description of the weather condition.
/// - [icon]: The icon representing the weather condition.
/// 
/// Methods:
/// - [fromJson]: Creates a [WeatherData] instance from a JSON object.
/// 
/// Author: Gonzalo Quedena
@immutable
class WeatherData {
  /// The unique identifier of the weather condition.
  final int id;

  /// The main weather condition.
  final String main;

  /// A description of the weather condition.
  final String description;

  /// The icon representing the weather condition.
  final String icon;

  /// Constructs a [WeatherData] instance.
  const WeatherData({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  /// Creates a [WeatherData] instance from a JSON object.
  ///
  /// Parameters:
  /// - [json]: A map containing the JSON data.
  ///
  /// Returns:
  /// - A [WeatherData] instance.
  factory WeatherData.fromJson(Map<String, dynamic> json) => WeatherData(
        id: json['id'] as int,
        main: json['main'] as String,
        description: json['description'] as String,
        icon: json['icon'] as String,
      );
}