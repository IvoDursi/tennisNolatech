import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:weather_service/failures/weather_service_failures.dart';
import 'package:weather_service/model/hour_dto.dart';

/// Servicio de clima
class WeatherService {
  /// {@macro tennis_nolatech_repository}
  const WeatherService();

  static const String apiKey = 'c6d12c2ed1ef4b4bb3e04509241201';

  Future<Either<WeatherServiceFailures, HourDTO>> fetchDateForecast(
      DateTime dateTime) async {
    final date = DateFormat('yyyy-MM-dd').format(dateTime);

    late String url;

    if (dateTime.isAfter(DateTime.now().add(Duration(days: 14)))) {
      url =
          'https://api.weatherapi.com/v1/future.json?key=$apiKey&q=Argentina&dt=$date';
    } else {
      url =
          'https://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=Argentina&dt=$date';
    }

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final jsonForecastDays =
            jsonDecode(response.body)['forecast']['forecastday'] as List;

        final jsonHours = jsonForecastDays.first['hour'] as List;

        final jsonHour = jsonHours.first;

        final hourDto = HourDTO.fromJson(jsonHour);

        return Right(hourDto);
      }

      return Left(WeatherServiceFailures.failure());
    } catch (e) {
      return Left(WeatherServiceFailures.noConnection());
    }
  }
}
