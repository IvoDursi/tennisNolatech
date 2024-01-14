import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tennis_nolatech_repository/failures/tennis_repository_failures.dart';

part 'reservation_state.freezed.dart';

@freezed
class ReservationState with _$ReservationState {
  const factory ReservationState.initial() = ReservationInitialState;
  const factory ReservationState.loading() = ReservationLoadingState;
  const factory ReservationState.loaded(String dateChanceOfRain) =
      ReservationLoadedState;
  const factory ReservationState.registered() = ReservationSuccessState;
  const factory ReservationState.failed(TennisRepositoryFailures failure) =
      ReservationFailedState;
}
