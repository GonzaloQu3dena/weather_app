import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/features/weather/application/usecases/get_weather_use_case.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/features/weather/presentation/widgets/status_message.dart';
import 'package:weather_app/features/weather/presentation/widgets/weather_card.dart';

class WeatherNotifier extends StateNotifier<AsyncValue<WeatherEntity>> {
  final GetWeatherUseCase getWeatherUseCase;

  WeatherNotifier(this.getWeatherUseCase) : super(const AsyncValue.loading());

  Future<void> fetchWeather(String cityName) async {
    state = const AsyncValue.loading();
    try {
      final weather = await getWeatherUseCase.execute(cityName);
      state = AsyncValue.data(weather);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

// Proveedor para el WeatherNotifier
final weatherNotifierProvider =
    StateNotifierProvider<WeatherNotifier, AsyncValue<WeatherEntity>>((ref) {
  final getWeatherUseCase = ref.read(getWeatherUseCaseProvider);
  return WeatherNotifier(getWeatherUseCase);
});

class WeatherPage extends ConsumerWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(weatherNotifierProvider);
    final weatherNotifier = ref.read(weatherNotifierProvider.notifier);

    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        decoration: const InputDecoration(
                          hintText: 'Enter city name',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        final cityName = searchController.text.trim();
                        if (cityName.isNotEmpty) {
                          weatherNotifier.fetchWeather(cityName);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            weatherState.when(
              data: (weather) => WeatherCard(weather: weather),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => StatusMessage(message: 'Error: $e', isError: true),
            ),
          ],
        ),
      ),
    );
  }
}