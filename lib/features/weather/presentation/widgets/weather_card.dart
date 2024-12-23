import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/core/constants/text_styles.dart';
import 'package:weather_app/core/extensions/string_extensions.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';

class WeatherCard extends StatelessWidget {
  final WeatherEntity weather;

  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.darkBlue,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              weather.cityName,
              style: TextStyles.h1,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Image.asset(
                  'assets/icons/${weather.iconCode}.png',
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 10),
                Text(
                  '${weather.temperature.toStringAsFixed(1)}°C',
                  style: TextStyles.h2,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              weather.description.capitalize,
              style: TextStyles.subtitleText,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Humedad: ${weather.humidity}%', style: TextStyles.h3),
                Text('Viento: ${weather.windSpeed} km/h', style: TextStyles.h3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
