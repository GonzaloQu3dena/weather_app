import 'package:weather_app/features/weather/domain/valueobjects/city_name.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';

class WeatherService {
  final WeatherRepository repository;

  WeatherService(this.repository);

  Future<WeatherEntity> getWeatherForCity(CityName cityName) async {
    if (!cityName.isValid) {
      throw Exception('Invalid city name provided.');
    }

    final weather = await repository.fetchWeather(cityName.value);

    final description = _modifyDescriptionBasedOnTemperature(weather.temperature, weather.description);

    return WeatherEntity(
      cityName: weather.cityName,
      temperature: weather.temperature,
      description: description,
      windSpeed: weather.windSpeed,
      humidity: weather.humidity,
      dateTime: weather.dateTime,
      iconCode: weather.iconCode,
    );
  }

  String _modifyDescriptionBasedOnTemperature(double temperature, String description) {
    if (temperature < 5) {
      return '$description (Freezing cold!)';
    } else if (temperature < 15) {
      return '$description (It\'s cold)';
    } else if (temperature > 30) {
      return '$description (Stay hydrated!)';
    }
    return description;
  }
}
