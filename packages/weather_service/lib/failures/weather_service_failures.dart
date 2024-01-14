import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_service_failures.freezed.dart';

@freezed
class WeatherServiceFailures with _$WeatherServiceFailures {
  const factory WeatherServiceFailures.failure() = ServiceFailure;

  const factory WeatherServiceFailures.noConnection() =
      ServiceNoConnectionFailure;
}
