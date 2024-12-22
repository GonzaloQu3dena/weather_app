import 'package:flutter/foundation.dart';

@immutable
class WeatherEntity {
  final String cityName;
  final double temperature;
  final String description;
  final double windSpeed;
  final int humidity;
  final DateTime dateTime;
  final String iconCode;

  const WeatherEntity({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.windSpeed,
    required this.humidity,
    required this.dateTime,
    required this.iconCode,
  });
}
