import 'package:dio/dio.dart';
import 'package:weather_app/core/constants/api_constants.dart';
import 'package:weather_app/features/weather/infrastructure/models/weather_model.dart'; 

class WeatherDataSource {
  final Dio dio;

  WeatherDataSource({required this.dio});

  Future<WeatherModel> getWeather(String cityName) async {
    try {
      final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather',
        queryParameters: {
          'q': cityName,
          'units': 'metric',
          'appid': ApiConstants.apiKey,
        },
      );
      if (response.statusCode == 200) {
        return WeatherModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      throw Exception('Failed to load weather data: $e');
    }
  }
}
