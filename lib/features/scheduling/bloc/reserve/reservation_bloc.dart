import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:nolatech/features/scheduling/bloc/bloc.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  ReservationBloc({
    required this.tennisNolatechRepository,
  }) : super(const ReservationState.initial()) {
    on<ReservationRegisterEvent>(_onRegister);
    on<ReservationSetDateEvent>(_onSetDate);
  }

  final TennisNolatechRepository tennisNolatechRepository;

  /// Registra una nueva reserva
  Future<void> _onRegister(
    ReservationRegisterEvent event,
    Emitter<ReservationState> emit,
  ) async {
    emit(const ReservationState.loading());

    final registerEither = await tennisNolatechRepository
        .registerNewReservation(event.reservation);

    if (registerEither.isLeft()) {
      final failure =
          (registerEither as Left<TennisRepositoryFailures, void>).value;
      return emit(ReservationState.failed(failure));
    }

    emit(const ReservationState.registered());
  }

  /// Obtiene las probabilidades de lluvia de la fecha seleccionada
  Future<void> _onSetDate(
    ReservationSetDateEvent event,
    Emitter<ReservationState> emit,
  ) async {
    emit(const ReservationState.loading());

    final dateChanceOfRainEither =
        await tennisNolatechRepository.fetchDateChanceOfRain(event.date);

    if (dateChanceOfRainEither.isLeft()) {
      final failure =
          (dateChanceOfRainEither as Left<TennisRepositoryFailures, String>)
              .value;
      return emit(ReservationState.failed(failure));
    }

    final dateChanceOfRain =
        (dateChanceOfRainEither as Right<TennisRepositoryFailures, String>)
            .value;

    emit(ReservationState.loaded(dateChanceOfRain));
  }
}
