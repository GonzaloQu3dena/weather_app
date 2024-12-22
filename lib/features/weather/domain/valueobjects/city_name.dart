import 'package:flutter/foundation.dart';

@immutable
class CityName {
  final String value;

  const CityName(this.value);

  bool get isValid => value.isNotEmpty;

  @override
  String toString() => value;
}
