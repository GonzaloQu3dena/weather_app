import 'package:flutter/foundation.dart';
import 'package:weather_app/features/weather/domain/valueobjects/coordinates.dart';

/// City
/// 
/// Represents a city with various attributes.
/// 
/// Properties:
/// - [id]: The unique identifier of the city.
/// - [name]: The name of the city.
/// - [coord]: The geographical coordinates of the city.
/// - [country]: The country code of the city.
/// - [population]: The population of the city.
/// - [timezone]: The timezone offset from UTC in seconds.
/// - [sunrise]: The sunrise time in Unix timestamp.
/// - [sunset]: The sunset time in Unix timestamp.
/// 
/// Methods:
/// - [fromJson]: Creates a [City] instance from a JSON object.
/// 
/// Author: Gonzalo Quedena
@immutable
class City {
  /// The unique identifier of the city.
  final int id;

  /// The name of the city.
  final String name;

  /// The geographical coordinates of the city.
  final Coord coord;

  /// The country code of the city.
  final String country;

  /// The population of the city.
  final int population;

  /// The timezone offset from UTC in seconds.
  final int timezone;

  /// The sunrise time in Unix timestamp.
  final int sunrise;

  /// The sunset time in Unix timestamp.
  final int sunset;

  /// Constructs a [City] instance.
  const City({
    required this.id,
    required this.name,
    required this.coord,
    required this.country,
    required this.population,
    required this.timezone,
    required this.sunrise,
    required this.sunset,
  });

  /// Creates a [City] instance from a JSON object.
  ///
  /// Parameters:
  /// - [json]: A map containing the JSON data.
  ///
  /// Returns:
  /// - A [City] instance.
  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      name: json['name'],
      coord: Coord.fromJson(json['coord']),
      country: json['country'],
      population: json['population'],
      timezone: json['timezone'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
    );
  }
}