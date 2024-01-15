import 'dart:core';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:nolatech/features/home/home.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.tennisNolatechRepository,
  }) : super(const HomeState.initial()) {
    on<HomeInitEvent>(_onInit);
    on<HomeRemoveReservationEvent>(_onReservationRemove);

    add(const HomeEvent.init());
  }

  final TennisNolatechRepository tennisNolatechRepository;

  /// Evento init del bloc
  Future<void> _onInit(
    HomeInitEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    final reservationsEither =
        await tennisNolatechRepository.fetchReservations();

    if (reservationsEither.isLeft()) {
      return emit(const HomeState.failed());
    }

    final reservations = (reservationsEither
            as Right<TennisRepositoryFailures, List<Reservation>>)
        .value;

    emit(HomeState.loaded(reservations));
  }

  /// Elimina una reserva realizada
  Future<void> _onReservationRemove(
    HomeRemoveReservationEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    final reservationsEither =
        await tennisNolatechRepository.removeReservation(event.reservation);

    if (reservationsEither.isLeft()) {
      return emit(const HomeState.failed());
    }

    add(const HomeEvent.init());
  }
}
