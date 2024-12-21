import 'package:flutter/foundation.dart';

/// Coord 
/// 
/// Represents geographical coordinates.
/// 
/// Properties:
/// - [lat]: The latitude of the location.
/// - [lon]: The longitude of the location.
/// 
/// Methods:
/// - [fromJson]: Creates a [Coord] instance from a JSON object.
/// 
/// Author: Gonzalo Quedena
@immutable
class Coord {
  /// The latitude of the location.
  final double lat;

  /// The longitude of the location.
  final double lon;

  /// Constructs a [Coord] instance.
  ///
  /// Parameters:
  /// - [lat]: The latitude of the location.
  /// - [lon]: The longitude of the location.
  const Coord({
    required this.lat,
    required this.lon,
  });

  /// Creates a [Coord] instance from a JSON object.
  ///
  /// Parameters:
  /// - [json]: A map containing the JSON data.
  ///
  /// Returns:
  /// - A [Coord] instance.
  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
      lat: json['lat'].toDouble(),
      lon: json['lon'].toDouble(),
    );
  }
}