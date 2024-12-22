import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/features/weather/infrastructure/datasources/weather_data_source.dart';

class WeatherRepository {
  final WeatherDataSource weatherDataSource;

  WeatherRepository({required this.weatherDataSource});

  Future<WeatherEntity> getWeather(String cityName) async {
    final weatherModel = await weatherDataSource.getWeather(cityName);
    return weatherModel.toEntity();  
  }
}
