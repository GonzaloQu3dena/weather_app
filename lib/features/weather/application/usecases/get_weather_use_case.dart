import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/features/weather/infrastructure/repositories/weather_repository_impl.dart';

final getWeatherUseCaseProvider = Provider<GetWeatherUseCase>((ref) {
  final weatherRepository = ref.read(weatherRepositoryProvider);
  return GetWeatherUseCase(weatherRepository);
});

class GetWeatherUseCase {
  final WeatherRepository weatherRepository;

  GetWeatherUseCase(this.weatherRepository);

  Future<WeatherEntity> execute(String cityName) async {
    final weather = await weatherRepository.fetchWeather(cityName);
    return weather;
  }
}
