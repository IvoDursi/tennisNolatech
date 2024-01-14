import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:nolatech/extensions/extensions.dart';
import 'package:nolatech/features/scheduling/bloc/bloc.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

/// Bloc que se encarga de la disponibilidad de fechas de la cancha
class ReservedDaysBloc extends Bloc<ReservedDaysEvent, ReservedDaysState> {
  ReservedDaysBloc({
    required this.tennisNolatechRepository,
    required this.field,
  }) : super(const ReservedDaysState.initial()) {
    on<ReservedDaysInitEvent>(_onInit);

    add(const ReservedDaysEvent.init());
  }

  final TennisNolatechRepository tennisNolatechRepository;
  final Field field;

  Future<void> _onInit(
    ReservedDaysInitEvent event,
    Emitter<ReservedDaysState> emit,
  ) async {
    emit(const ReservedDaysState.loading());

    final reservationsEither =
        await tennisNolatechRepository.fetchReservations(fieldName: field.name);

    if (reservationsEither.isLeft()) {
      final failure = (reservationsEither
              as Left<TennisRepositoryFailures, List<Reservation>>)
          .value;
      return emit(ReservedDaysState.failed(failure));
    }

    final reservations = (reservationsEither
            as Right<TennisRepositoryFailures, List<Reservation>>)
        .value;

    final reservedDays =
        reservations.map((reservation) => reservation.date).toList();

    var tripleBookedDates = <DateTime>[];

    var dayFrequencyMap = <int, int>{};

    for (var reservedDay in reservedDays) {
      var day = reservedDay.day;

      dayFrequencyMap[day] = (dayFrequencyMap[day] ?? 0) + 1;

      if (dayFrequencyMap[day] == 3) {
        tripleBookedDates.add(reservedDay);
      }
    }

    emit(ReservedDaysState.loaded(tripleBookedDates));
  }
}
