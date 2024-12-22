import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/features/weather/infrastructure/datasources/weather_data_source.dart';

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  final weatherDataSource = ref.read(weatherDataSourceProvider);
  return WeatherRepositoryImpl(weatherDataSource);
});

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherDataSource weatherDataSource;

  WeatherRepositoryImpl(this.weatherDataSource);

  @override
  Future<WeatherEntity> fetchWeather(String cityName) async {
    return await weatherDataSource.fetchWeatherData(cityName);
  }
}
