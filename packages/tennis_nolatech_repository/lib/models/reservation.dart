import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

@freezed

/// Modelo de la reserva
class Reservation with _$Reservation {
  factory Reservation({
    required String name,
    required DateTime date,
    required String field,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);
}
