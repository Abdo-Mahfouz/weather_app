import '../../models/weather_model.dart';

class WeatherState{}
class WeatherInitialState extends WeatherState {}
class GetWeatherSuccessState extends WeatherState{
  final WeatherModel weatherModel ;

  GetWeatherSuccessState({required this.weatherModel});
}
class GetWeatherFailureState extends WeatherState{
  final String errMessage;

  GetWeatherFailureState(this.errMessage);
}