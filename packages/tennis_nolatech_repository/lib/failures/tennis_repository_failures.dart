import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_service/failures/weather_service_failures.dart';

part 'tennis_repository_failures.freezed.dart';

@freezed
class TennisRepositoryFailures with _$TennisRepositoryFailures {
  const factory TennisRepositoryFailures.failure() = TennisFailure;

  const factory TennisRepositoryFailures.weatherService(
      WeatherServiceFailures failure) = TennisWeatherServiceFailure;
}
