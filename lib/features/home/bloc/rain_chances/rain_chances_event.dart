import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tennis_nolatech_repository/models/reservation.dart';

part 'rain_chances_event.freezed.dart';

@freezed
class RainChancesEvent with _$RainChancesEvent {
  const factory RainChancesEvent.init(Reservation reservation) =
      RainChancesInitEvent;
}
