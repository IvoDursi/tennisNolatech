import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tennis_nolatech_repository/models/reservation.dart';

part 'reservation_data.freezed.dart';
part 'reservation_data.g.dart';

/// Modelo de la información de la reserva
@freezed
class ReservationData with _$ReservationData {
  factory ReservationData({
    required Reservation reservation,
    String? chancesOfRain,
  }) = _ReservationData;

  factory ReservationData.fromJson(Map<String, dynamic> json) =>
      _$ReservationDataFromJson(json);
}
