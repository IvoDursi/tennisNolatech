// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReservationData _$ReservationDataFromJson(Map<String, dynamic> json) {
  return _ReservationData.fromJson(json);
}

/// @nodoc
mixin _$ReservationData {
  Reservation get reservation => throw _privateConstructorUsedError;
  String? get chancesOfRain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationDataCopyWith<ReservationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationDataCopyWith<$Res> {
  factory $ReservationDataCopyWith(
          ReservationData value, $Res Function(ReservationData) then) =
      _$ReservationDataCopyWithImpl<$Res, ReservationData>;
  @useResult
  $Res call({Reservation reservation, String? chancesOfRain});

  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class _$ReservationDataCopyWithImpl<$Res, $Val extends ReservationData>
    implements $ReservationDataCopyWith<$Res> {
  _$ReservationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservation = null,
    Object? chancesOfRain = freezed,
  }) {
    return _then(_value.copyWith(
      reservation: null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
      chancesOfRain: freezed == chancesOfRain
          ? _value.chancesOfRain
          : chancesOfRain // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReservationCopyWith<$Res> get reservation {
    return $ReservationCopyWith<$Res>(_value.reservation, (value) {
      return _then(_value.copyWith(reservation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReservationDataImplCopyWith<$Res>
    implements $ReservationDataCopyWith<$Res> {
  factory _$$ReservationDataImplCopyWith(_$ReservationDataImpl value,
          $Res Function(_$ReservationDataImpl) then) =
      __$$ReservationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Reservation reservation, String? chancesOfRain});

  @override
  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class __$$ReservationDataImplCopyWithImpl<$Res>
    extends _$ReservationDataCopyWithImpl<$Res, _$ReservationDataImpl>
    implements _$$ReservationDataImplCopyWith<$Res> {
  __$$ReservationDataImplCopyWithImpl(
      _$ReservationDataImpl _value, $Res Function(_$ReservationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservation = null,
    Object? chancesOfRain = freezed,
  }) {
    return _then(_$ReservationDataImpl(
      reservation: null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
      chancesOfRain: freezed == chancesOfRain
          ? _value.chancesOfRain
          : chancesOfRain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationDataImpl implements _ReservationData {
  _$ReservationDataImpl({required this.reservation, this.chancesOfRain});

  factory _$ReservationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationDataImplFromJson(json);

  @override
  final Reservation reservation;
  @override
  final String? chancesOfRain;

  @override
  String toString() {
    return 'ReservationData(reservation: $reservation, chancesOfRain: $chancesOfRain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationDataImpl &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation) &&
            (identical(other.chancesOfRain, chancesOfRain) ||
                other.chancesOfRain == chancesOfRain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reservation, chancesOfRain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationDataImplCopyWith<_$ReservationDataImpl> get copyWith =>
      __$$ReservationDataImplCopyWithImpl<_$ReservationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationDataImplToJson(
      this,
    );
  }
}

abstract class _ReservationData implements ReservationData {
  factory _ReservationData(
      {required final Reservation reservation,
      final String? chancesOfRain}) = _$ReservationDataImpl;

  factory _ReservationData.fromJson(Map<String, dynamic> json) =
      _$ReservationDataImpl.fromJson;

  @override
  Reservation get reservation;
  @override
  String? get chancesOfRain;
  @override
  @JsonKey(ignore: true)
  _$$ReservationDataImplCopyWith<_$ReservationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
