import 'package:freezed_annotation/freezed_annotation.dart';

part 'reserved_days_event.freezed.dart';

@freezed
class ReservedDaysEvent with _$ReservedDaysEvent {
  const factory ReservedDaysEvent.init() = ReservedDaysInitEvent;
}
