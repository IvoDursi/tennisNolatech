import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tennis_nolatech_repository/models/reservation.dart';

part 'reservation_event.freezed.dart';

@freezed
class ReservationEvent with _$ReservationEvent {
  const factory ReservationEvent.register(Reservation reservation) =
      ReservationRegisterEvent;

  const factory ReservationEvent.setDate(DateTime date) =
      ReservationSetDateEvent;
}
