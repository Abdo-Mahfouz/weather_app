import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final dio = Dio();
  String baseUrl = 'https://api.weatherapi.com/v1';
  String apiKey = '6eaba821b7d746ed832140822242210';

  WeatherService(Dio dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      final response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message']?? 'ops, there was an error,Try again later';
      throw Exception(errMessage);
    } catch(e){
      throw Exception('ops, there was an error,Try again later');
    }
  }
}
