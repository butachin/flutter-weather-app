import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:flutter_weather_app/models/weather_model.dart';

class WeatherAPI {

  final client = http.Client();

  Future<List<WeatherModel>> get() async {
    var url = 'http://api.openweathermap.org/data/2.5/forecast';
    var q = 'Hakodate';
    var appId = '742c5ceb44cc03def377fa696628f8d2';

    var res = await client.get(Uri.parse(url + '?q' + q + '&appid' + appId));

    if (res.statusCode == 200) {
        List<WeatherModel> list = [];
        Map<String, dynamic> decode = json.decode(res.body);
        for(var item in decode['list']) {
          list.add(WeatherModel.fromJson(item));
        }
        return list;
    } else {
      throw Exception('Fail to search weather');
    }
  }
}
