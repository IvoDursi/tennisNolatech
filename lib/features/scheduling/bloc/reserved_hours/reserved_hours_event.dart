import 'package:freezed_annotation/freezed_annotation.dart';

part 'reserved_hours_event.freezed.dart';

@freezed
class ReservedHoursEvent with _$ReservedHoursEvent {
  const factory ReservedHoursEvent.init(DateTime selectedDate) =
      ReservedHoursInitEvent;
}
