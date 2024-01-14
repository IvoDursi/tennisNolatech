import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitialState;
  const factory HomeState.loading() = HomeLoadingState;
  const factory HomeState.loaded(
    List<Reservation> reservations,
  ) = HomeLoadedState;
  const factory HomeState.failed() = HomeFailedState;
}
