class WeatherModel {
  double tempMin;
  double tempMax;
  String weatherIcon;

  WeatherModel.fromJson(Map<String, dynamic> json):
      weatherIcon = json['weather_icon'],
      tempMin = json['temp_min'],
      tempMax = json['temp_max'];
}