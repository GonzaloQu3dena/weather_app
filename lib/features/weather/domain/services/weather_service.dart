import 'package:weather_app/features/weather/domain/entities/weather_entry.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';

/// Weather Service
/// 
/// Service to handle weather-related operations.
/// 
/// Properties:
/// - [repository]: The repository to fetch weather data from.
/// 
/// Methods:
/// - [getWeather]: Fetches weather data for a given city.
/// 
/// Author: Gonzalo Quedena
class WeatherService {
  /// The repository to fetch weather data from.
  final WeatherRepository repository;

  /// Constructs a [WeatherService] instance.
  ///
  /// Parameters:
  /// - [repository]: The repository to fetch weather data from.
  WeatherService(this.repository);

  /// Fetches weather data for a given city.
  ///
  /// Parameters:
  /// - [cityName]: The name of the city to fetch weather data for.
  ///
  /// Returns:
  /// - A [Future] that resolves to a list of [WeatherEntry] instances.
  Future<List<WeatherEntry>> getWeatherAsync(String cityName) async {
    return await repository.fetchWeatherDataAsync(cityName);
  }
}