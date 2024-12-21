/// Get weather icon by weather code or id
/// 
/// Returns the weather icon based on the weather code or id.
/// 
/// Parameters:
/// - weatherCode: int? - Weather code (optional)
/// - id: int? - Weather id (optional)
/// 
/// Returns:
/// - String - Weather icon path
/// 
/// Author: Gonzalo Quedena
String getWeatherIcon({int? weatherCode, int? id}) {
  // Map of specific weather codes to their corresponding icons
  const weatherCodeIcons = {
    800: 'assets/icons/01d.png',
    801: 'assets/icons/02d.png',
    802: 'assets/icons/03d.png',
    803: 'assets/icons/04d.png',
    804: 'assets/icons/04d.png',
  };

  // Map of specific weather ids to their corresponding icons
  const weatherIdIcons = {
    0: 'assets/icons/01d.png',
    1: 'assets/icons/6.png',
    2: 'assets/icons/03d.png',
    3: 'assets/icons/04d.png',
    45: 'assets/icons/04d.png',
    48: 'assets/icons/04d.png',
    53: 'assets/icons/39.png',
  };

  // Map of weather code ranges to their corresponding icons
  const weatherCodeRanges = {
    200: 'assets/icons/11d.png',
    300: 'assets/icons/09d.png',
    500: 'assets/icons/10d.png',
    600: 'assets/icons/13d.png',
    700: 'assets/icons/50d.png',
  };

  // Map of weather id ranges to their corresponding icons
  const weatherIdRanges = {
    51: 'assets/icons/09d.png',
    61: 'assets/icons/7.png',
    71: 'assets/icons/04d.png',
    80: 'assets/icons/7.png',
    86: 'assets/icons/13d.png',
  };

  // Determine the icon based on the weather code if provided
  if (weatherCode != null) {
    return weatherCodeIcons[weatherCode] ??
        weatherCodeRanges.entries
            .firstWhere((entry) => weatherCode >= entry.key, orElse: () => MapEntry(0, 'assets/icons/01d.png'))
            .value;
  } 
  // Determine the icon based on the weather id if provided
  else if (id != null) {
    return weatherIdIcons[id] ??
        weatherIdRanges.entries
            .firstWhere((entry) => id >= entry.key, orElse: () => MapEntry(0, 'assets/icons/01d.png'))
            .value;
  }

  // Default icon if no weather code or id is provided
  return 'assets/icons/01d.png';
}

/*

0: Clear sky
1: Mainly clear
2: Partly cloudy
3: Overcast
45: Fog
48: Depositing rime fog
51: Light drizzle
52: Moderate drizzle
53: Heavy drizzle
55: Freezing drizzle
56: Light freezing drizzle
57: Heavy freezing drizzle
61: Slight rain
63: Moderate rain
65: Heavy rain
66: Light freezing rain
67: Heavy freezing rain
71: Slight snowfall
73: Moderate snowfall
75: Heavy snowfall
77: Ice pellets
80: Light rain showers
81: Moderate rain showers
82: Violent rain showers
85: Light snow showers
86: Moderate snow showers
87: Violent snow showers

*/