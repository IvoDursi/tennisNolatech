// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationDataImpl _$$ReservationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationDataImpl(
      reservation:
          Reservation.fromJson(json['reservation'] as Map<String, dynamic>),
      chancesOfRain: json['chancesOfRain'] as String?,
    );

Map<String, dynamic> _$$ReservationDataImplToJson(
        _$ReservationDataImpl instance) =>
    <String, dynamic>{
      'reservation': instance.reservation,
      'chancesOfRain': instance.chancesOfRain,
    };
