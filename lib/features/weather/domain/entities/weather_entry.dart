import 'package:flutter/foundation.dart';
import 'package:weather_app/features/weather/domain/entities/weather.dart';
import 'package:weather_app/features/weather/domain/valueobjects/rain.dart';
import 'package:weather_app/features/weather/domain/valueobjects/clouds.dart';
import 'temperature.dart';
import 'wind.dart';

/// Weather Entry
///
/// Represents a weather entry with various weather-related data.
/// 
/// Properties:
/// - [dt]: The timestamp of the weather data.
/// - [main]: The main temperature data.
/// - [weather]: A list of weather conditions.
/// - [clouds]: Cloud data.
/// - [wind]: Wind data.
/// - [visibility]: Visibility in meters.
/// - [pop]: Probability of precipitation.
/// - [rain]: Rain data, if available.
/// - [dtTxt]: The date and time of the weather data as a string.
/// 
/// Methods:
/// - [fromJson]: Creates a [WeatherEntry] instance from a JSON object.
/// 
/// Author: Gonzalo Quedena
@immutable
class WeatherEntry {
  /// The timestamp of the weather data.
  final int dt;

  /// The main temperature data.
  final Temperature main;

  /// A list of weather conditions.
  final List<WeatherData> weather;

  /// Cloud data.
  final Clouds clouds;

  /// Wind data.
  final Wind wind;

  /// Visibility in meters.
  final int visibility;

  /// Probability of precipitation.
  final dynamic pop;

  /// Rain data, if available.
  final Rain? rain;

  /// The date and time of the weather data as a string.
  final String dtTxt;

  /// Constructs a [WeatherEntry] instance.
  const WeatherEntry({
    required this.dt,
    required this.main,
    required this.weather,
    required this.clouds,
    required this.wind,
    required this.visibility,
    required this.pop,
    required this.rain,
    required this.dtTxt,
  });

  /// Creates a [WeatherEntry] instance from a JSON object.
  ///
  /// Parameters:
  /// - [json]: A map containing the JSON data.
  ///
  /// Returns:
  /// - A [WeatherEntry] instance.
  /// 
  /// Author: Gonzalo Quedena
  factory WeatherEntry.fromJson(Map<String, dynamic> json) {
    return WeatherEntry(
      dt: json['dt'],
      main: Temperature.fromJson(json['main']),
      weather: (json['weather'] as List<dynamic>)
          .map((weatherData) => WeatherData.fromJson(weatherData))
          .toList(),
      clouds: Clouds.fromJson(json['clouds']),
      wind: Wind.fromJson(json['wind']),
      visibility: json['visibility'] ?? 0,
      pop: json['pop'] ?? 0.0,
      rain: json['rain'] != null ? Rain.fromJson(json['rain']) : null,
      dtTxt: json['dt_txt'],
    );
  }
}