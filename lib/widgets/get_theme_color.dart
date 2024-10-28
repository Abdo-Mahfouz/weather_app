import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) return Colors.blue;

  switch (condition) {
    case "Sunny":
    case "Clear":
      return Colors.orange; // Warm color for sunny/clear weather

    case "Partly cloudy":
      return Colors.yellow; // Light color for partly cloudy conditions

    case "Cloudy":
    case "Overcast":
      return Colors.grey; // Neutral color for cloudy or overcast weather

    case "Mist":
    case "Fog":
    case "Freezing fog":
      return Colors.blueGrey; // Foggy or misty colors

    case "Patchy rain possible":
    case "Patchy light rain":
    case "Light rain":
      return Colors.lightBlue; // Light rain colors

    case "Moderate rain at times":
    case "Moderate rain":
    case "Heavy rain at times":
    case "Heavy rain":
    case "Torrential rain shower":
      return Colors.blue; // Darker blue for heavy rain

    case "Patchy snow possible":
    case "Light snow":
    case "Moderate snow":
    case "Heavy snow":
      return Colors.indigo; // Cold color for snow

    case "Thundery outbreaks possible":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
    case "Moderate or heavy snow with thunder":
      return Colors.deepPurple; // Dramatic color for thunder

    default:
      return Colors.teal; // Default for any other condition
  }
}