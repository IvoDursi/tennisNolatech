import 'dart:core';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:nolatech/features/home/bloc/rain_chances/rain_chances_event.dart';
import 'package:nolatech/features/home/bloc/rain_chances/rain_chances_state.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

class RainChancesBloc extends Bloc<RainChancesEvent, RainChancesState> {
  RainChancesBloc({
    required this.tennisNolatechRepository,
  }) : super(const RainChancesState.initial()) {
    on<RainChancesInitEvent>(_onInit);
  }

  final TennisNolatechRepository tennisNolatechRepository;

  /// Evento init del bloc que toma las probabilidades de lluvia de las reservas realizadas
  Future<void> _onInit(
    RainChancesEvent event,
    Emitter<RainChancesState> emit,
  ) async {
    emit(const RainChancesState.loading());

    final registerEither = await tennisNolatechRepository
        .fetchReservationsChanceOfRain(event.reservations);

    if (registerEither.isLeft()) {
      final failure =
          (registerEither as Left<TennisRepositoryFailures, List<String>>)
              .value;
      return emit(RainChancesState.failed(failure));
    }

    final reservationsRainChances =
        (registerEither as Right<TennisRepositoryFailures, List<String>>).value;

    emit(RainChancesState.loaded(reservationsRainChances));
  }
}
