import 'package:dartz/dartz.dart';
import 'package:local_storage_service/local_storage_service.dart';
import 'package:tennis_nolatech_repository/failures/tennis_repository_failures.dart';
import 'package:tennis_nolatech_repository/models/reservation.dart';
import 'package:weather_service/failures/weather_service_failures.dart';
import 'package:weather_service/model/hour_dto.dart';
import 'package:weather_service/weather_service.dart';

/// Repositorio de Tennis Nolatech
class TennisNolatechRepository {
  /// {@macro tennis_nolatech_repository}
  const TennisNolatechRepository({
    required this.localStorageService,
    required this.weatherService,
  });

  /// Servicio de datos guardados localmente
  final LocalStorageService localStorageService;

  /// Servicio de datos del clima
  final WeatherService weatherService;

  /// Obtiene las reservas realizadas
  Future<Either<TennisRepositoryFailures, List<Reservation>>> fetchReservations(
      {DateTime? dateTime, String? fieldName}) async {
    final reserveEither = localStorageService.get<List<Reservation>>(
      key: 'reservations',
      fromJson: (json) {
        final value = json['reservations'] as List<dynamic>;
        final reservations = value
            .map((e) => Reservation.fromJson(e as Map<String, dynamic>))
            .toList();
        return reservations;
      },
    );

    if (reserveEither.isLeft()) {
      return Left(TennisRepositoryFailures.failure());
    }

    final reservations =
        (reserveEither as Right<void, List<Reservation>?>).value;

    if (reservations == null) {
      return Right([]);
    }

    if (dateTime != null) {
      reservations
          .retainWhere((reservation) => reservation.date.day == dateTime.day);
    }

    if (fieldName != null) {
      reservations.retainWhere((reservation) => reservation.field == fieldName);
    }

    return Right(reservations);
  }

  /// Registra una nueva reserva
  Future<Either<TennisRepositoryFailures, void>> registerNewReservation(
      Reservation reserve) async {
    var reservations = <Reservation>[];

    final savedReservationsEither = await fetchReservations();

    if (savedReservationsEither.isRight()) {
      final savedReservations =
          (savedReservationsEither as Right<void, List<Reservation>>).value;

      reservations = savedReservations;
    }

    reservations.add(reserve);

    reservations.sort((a, b) => a.date.compareTo(b.date));

    final reserveEither = await localStorageService.save(
      key: 'reservations',
      value: {
        'reservations': reservations,
      },
    );

    if (reserveEither.isLeft()) {
      return const Left(TennisRepositoryFailures.failure());
    }

    return const Right(null);
  }

  /// Elimina reserva persistida
  Future<Either<TennisRepositoryFailures, void>> removeReservation(
      Reservation reservation) async {
    var reservations = <Reservation>[];

    final savedreservationsEither = await fetchReservations();

    if (savedreservationsEither.isRight()) {
      final savedreservations =
          (savedreservationsEither as Right<void, List<Reservation>>).value;

      reservations = savedreservations;
    }

    reservations.remove(reservation);

    final reserveEither = await localStorageService.save(
      key: 'reservations',
      value: {
        'reservations': reservations,
      },
    );

    if (reserveEither.isLeft()) {
      return Left(TennisRepositoryFailures.failure());
    }

    return const Right(null);
  }

  /// Obtiene las probabilidades de lluvia de las reservas
  Future<Either<TennisRepositoryFailures, List<String>>>
      fetchReservationsChanceOfRain(
    List<Reservation> reservations,
  ) async {
    List<String> reservationsChanceOfRain = [];

    for (var reservation in reservations) {
      final dateForecastEither =
          await weatherService.fetchDateForecast(reservation.date);

      if (dateForecastEither.isLeft()) {
        final failure =
            (dateForecastEither as Left<WeatherServiceFailures, HourDTO>).value;
        return Left(TennisRepositoryFailures.weatherService(failure));
      }

      final dateForecast =
          (dateForecastEither as   Right<WeatherServiceFailures, HourDTO>).value;
      reservationsChanceOfRain.add(dateForecast.chanceOfRain.toString());
    }

    return Right(reservationsChanceOfRain);
  }

  /// Obtiene las probabilidades de lluvia de una fecha especifica
  Future<Either<TennisRepositoryFailures, String>> fetchDateChanceOfRain(
      DateTime dateTime) async {
    final dateForecastEither = await weatherService.fetchDateForecast(dateTime);

    if (dateForecastEither.isLeft()) {
      final failure =
          (dateForecastEither as Left<WeatherServiceFailures, HourDTO>).value;
      return Left(TennisRepositoryFailures.weatherService(failure));
    }
    final dateForecast =
        (dateForecastEither as Right<WeatherServiceFailures, HourDTO>).value;

    final dateChangeOfRain = dateForecast.chanceOfRain.toString();

    return Right(dateChangeOfRain);
  }
}
