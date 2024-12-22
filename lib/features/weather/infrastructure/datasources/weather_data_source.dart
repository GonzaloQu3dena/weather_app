import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:weather_app/core/constants/api_constants.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/features/weather/infrastructure/models/weather_model.dart';

final weatherDataSourceProvider = Provider<WeatherDataSource>((ref) {
  return WeatherDataSource();
});

class WeatherDataSource {
  final Dio _dio = Dio();

  Future<WeatherEntity> fetchWeatherData(String cityName) async {
    final response = await _dio.get(
      'https://api.openweathermap.org/data/2.5/weather',
      queryParameters: {
        'q': cityName,
        'units': 'metric',
        'appid': ApiConstants.apiKey,
      },
    );
    return WeatherModel.fromJson(response.data).toEntity();
  }
}
