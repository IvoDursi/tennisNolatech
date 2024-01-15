import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:nolatech/extensions/extensions.dart';
import 'package:nolatech/features/scheduling/bloc/bloc.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

/// Bloc que se encarga de la disponibilidad de horarios en la fecha seleccionada
class ReservedHoursBloc extends Bloc<ReservedHoursEvent, ReservedHoursState> {
  ReservedHoursBloc({
    required this.tennisNolatechRepository,
    required this.field,
  }) : super(const ReservedHoursState.initial()) {
    on<ReservedHoursInitEvent>(_onInit);
  }

  final TennisNolatechRepository tennisNolatechRepository;
  final Field field;

  /// Obtiene las horas reservadas de una fecha y cancha especifica
  Future<void> _onInit(
    ReservedHoursInitEvent event,
    Emitter<ReservedHoursState> emit,
  ) async {
    emit(const ReservedHoursState.loading());

    final reservationsEither = await tennisNolatechRepository.fetchReservations(
      dateTime: event.selectedDate,
      fieldName: field.name,
    );

    if (reservationsEither.isLeft()) {
      final failure = (reservationsEither
              as Left<TennisRepositoryFailures, List<Reservation>>)
          .value;
      return emit(ReservedHoursState.failed(failure));
    }

    final reservations = (reservationsEither
            as Right<TennisRepositoryFailures, List<Reservation>>)
        .value;

    final reservedHours = reservations.map((e) => e.date.hour).toList();

    emit(ReservedHoursState.loaded(reservedHours));
  }
}
