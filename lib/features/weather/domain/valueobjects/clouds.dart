import 'package:flutter/foundation.dart';

/// Clouds
/// 
/// Represents cloud data with various attributes.
/// 
/// Properties:
/// - [all]: The cloudiness percentage.
/// 
/// Methods:
/// - [fromJson]: Creates a [Clouds] instance from a JSON object.
/// 
/// Author: Gonzalo Quedena
@immutable
class Clouds {
  /// The cloudiness percentage.
  final int all;

  /// Constructs a [Clouds] instance.
  ///
  /// Parameters:
  /// - [all]: The cloudiness percentage.
  const Clouds({
    required this.all,
  });

  /// Creates a [Clouds] instance from a JSON object.
  ///
  /// Parameters:
  /// - [json]: A map containing the JSON data.
  ///
  /// Returns:
  /// - A [Clouds] instance.
  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(
      all: json['all'],
    );
  }
}