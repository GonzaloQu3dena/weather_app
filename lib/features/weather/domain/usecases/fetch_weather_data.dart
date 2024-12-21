import 'package:weather_app/features/weather/domain/entities/weather_entry.dart';
import 'package:weather_app/features/weather/domain/services/weather_service.dart';

/// FetchWeatherData
/// 
/// Use case class that fetches weather data for a given city.
/// 
/// Properties:
/// - [weatherService]: The weather service to use.
/// 
/// Methods:
/// - [execute]: Fetches weather data for a given city.
/// 
/// Author: Gonzalo Quedena
class FetchWeatherData {
  final WeatherService weatherService;

  FetchWeatherData(this.weatherService);

  /// Fetches weather data for a given city.
  /// 
  /// Parameters:
  /// - [cityName]: The name of the city to fetch weather data for.
  /// 
  /// Returns:
  /// - A list of [WeatherEntry] instances.
  Future<List<WeatherEntry>> execute(String cityName) async {
    return await weatherService.getWeatherAsync(cityName);
  }
}
