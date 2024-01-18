import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier{
    Future<WeatherData> getWeatherCurrent() async {
      WeatherData result = await ApiRepository.callApiGetWeather();
      return result;
      // call api
    }
    Future<List<WeatherDetail>> getWeatherDetail() async {
      List<WeatherDetail> result = await ApiRepository.callApiGetWeatherDetail();
      return result;
      // call api
    }
}