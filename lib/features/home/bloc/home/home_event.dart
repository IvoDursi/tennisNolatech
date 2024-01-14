import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tennis_nolatech_repository/models/reservation.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = HomeInitEvent;

  const factory HomeEvent.removeReservation(Reservation reservation) =
      HomeRemoveReservationEvent;
}
