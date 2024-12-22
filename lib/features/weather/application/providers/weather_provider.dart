import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/features/weather/application/usecases/get_weather_use_case.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';

final weatherStateProvider = StateNotifierProvider<WeatherStateNotifier, AsyncValue<WeatherEntity>>((ref) {
  final getWeatherUseCase = ref.read(getWeatherUseCaseProvider);
  return WeatherStateNotifier(getWeatherUseCase);
},);

class WeatherStateNotifier extends StateNotifier<AsyncValue<WeatherEntity>> {
  final GetWeatherUseCase getWeatherUseCase;

  WeatherStateNotifier(this.getWeatherUseCase) : super(const AsyncValue.loading());

  Future<void> fetchWeather(String cityName) async {
    try {
      state = const AsyncValue.loading();
      final weather = await getWeatherUseCase.execute(cityName);
      state = AsyncValue.data(weather);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
