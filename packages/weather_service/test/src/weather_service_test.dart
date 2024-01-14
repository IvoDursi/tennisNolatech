import 'package:flutter_test/flutter_test.dart';
import 'package:weather_service/failures/weather_service_failures.dart';
import 'package:weather_service/weather_service.dart';

void main() {
  group('WeatherService Tests', () {
    final weatherService = WeatherService();

    test('Fetch Date Forecast - Successful Response', () async {
      final dateTime = DateTime.now();

      final result = await weatherService.fetchDateForecast(dateTime);

      expect(result.isRight(), true);

      result.fold(
        (failure) {
          fail('Expect: HourDTO, Result: $failure');
        },
        (hourDto) {
          expect(hourDto, isNotNull);
          expect(hourDto.chanceOfRain, isNotNull);
        },
      );
    });

    test('fetchDateForecast - API failure', () async {
      final service = WeatherService();
      final dateTime = DateTime(2000, 1, 1);

      final result = await service.fetchDateForecast(dateTime);

      expect(result.isLeft(), isTrue);
      expect(
          result.fold(
            (failure) => failure,
            (hourDto) =>
                throw AssertionError('Expect: error, Result: $hourDto'),
          ),
          isA<WeatherServiceFailures>());
    });
  });
}
