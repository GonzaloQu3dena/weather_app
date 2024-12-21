import 'package:weather_app/features/weather/domain/entities/weather_entry.dart';

/// Weather Repository
/// 
/// Abstract class for the weather repository.
/// 
/// Methods:
/// - [fetchWeatherData]: Fetches weather data for a given city.
/// 
/// Author: Gonzalo Quedena
abstract class WeatherRepository {

  /// Fetches weather data for a given city.
  Future<List<WeatherEntry>> fetchWeatherDataAsync(String cityName);
}
