import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';

class WeatherModel {
  final String cityName;
  final double temperature;
  final String description;
  final double windSpeed;
  final int humidity;
  final DateTime dateTime;
  final String iconCode;

  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.windSpeed,
    required this.humidity,
    required this.dateTime,
    required this.iconCode,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'],
      windSpeed: json['wind']['speed'].toDouble(),
      humidity: json['main']['humidity'],
      dateTime: DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000),
      iconCode: json['weather'][0]['icon'],
    );
  }

  WeatherEntity toEntity() {
    return WeatherEntity(
      cityName: cityName,
      temperature: temperature,
      description: description,
      windSpeed: windSpeed,
      humidity: humidity,
      dateTime: dateTime,
      iconCode: iconCode,
    );
  }
}
