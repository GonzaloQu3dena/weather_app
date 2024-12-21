import 'package:flutter/foundation.dart';

/// Rain
/// 
/// Represents rain data with various attributes.
/// 
/// Properties:
/// - [threeHours]: The rain volume for the last 3 hours.
/// 
/// Methods:
/// - [fromJson]: Creates a [Rain] instance from a JSON object.
/// 
/// Author: Gonzalo Quedena
@immutable
class Rain {
  /// The rain volume for the last 3 hours.
  final double threeHours;

  /// Constructs a [Rain] instance.
  ///
  /// Parameters:
  /// - [threeHours]: The rain volume for the last 3 hours.
  const Rain({
    required this.threeHours,
  });

  /// Creates a [Rain] instance from a JSON object.
  ///
  /// Parameters:
  /// - [json]: A map containing the JSON data.
  ///
  /// Returns:
  /// - A [Rain] instance.
  factory Rain.fromJson(Map<String, dynamic> json) {
    return Rain(
      threeHours: json['3h'] ?? 0.0,
    );
  }
}