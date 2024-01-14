import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tennis_nolatech_repository/tennis_nolatech_repository.dart';

part 'reserved_days_state.freezed.dart';

@freezed
class ReservedDaysState with _$ReservedDaysState {
  const factory ReservedDaysState.initial() = ReservedDaysInitialState;
  const factory ReservedDaysState.loading() = ReservedDaysLoadingState;
  const factory ReservedDaysState.loaded(
    List<DateTime> reservedDays,
  ) = ReservedDaysLoadedState;
  const factory ReservedDaysState.failed(TennisRepositoryFailures failure) =
      ReservedDaysFailedState;
}
