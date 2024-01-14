import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

part 'reserved_hours_state.freezed.dart';

@freezed
class ReservedHoursState with _$ReservedHoursState {
  const factory ReservedHoursState.initial() = ReservedHoursInitialState;
  const factory ReservedHoursState.loading() = ReservedHoursLoadingState;
  const factory ReservedHoursState.loaded(
    List<int> reservedHours,
  ) = ReservedHoursLoadedState;
  const factory ReservedHoursState.failed(TennisRepositoryFailures failure) =
      ReservedHoursFailedState;
}
