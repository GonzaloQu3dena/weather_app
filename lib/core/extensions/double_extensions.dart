/// Double extensions
///
/// This file contains the extensions for the double data type.
///
/// Extensions:
/// - kmh: Converts the wind speed from m/s to km/h.
///
/// Author: Gonzalo Quedena
extension ConvertWindSpeed on double {
  String get kmh => 
      (this * 3.6).toStringAsFixed(2);
}
