import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tennis_nolatech_repository/failures/tennis_repository_failures.dart';

part 'rain_chances_state.freezed.dart';

@freezed
class RainChancesState with _$RainChancesState {
  const factory RainChancesState.initial() = RainChancesInitialState;
  const factory RainChancesState.loading() = RainChancesLoadingState;
  const factory RainChancesState.loaded(String reservationRainChances) =
      RainChancesLoadedState;
  const factory RainChancesState.failed(TennisRepositoryFailures failure) =
      RainChancesFailedState;
}
