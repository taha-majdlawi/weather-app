import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService(this.dio);

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          'http://api.weatherapi.com/v1/forecast.json?key=05d6215d129b4fff90f115114251001&q=$cityName&days=1&aqi=no&alerts=no');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMsg =
          e.response?.data['error']['message'] ?? 'oops, error try again later';
      throw Exception(errMsg);
    }
  }
}
