// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) register,
    required TResult Function(DateTime date) setDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reservation reservation)? register,
    TResult? Function(DateTime date)? setDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? register,
    TResult Function(DateTime date)? setDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationRegisterEvent value) register,
    required TResult Function(ReservationSetDateEvent value) setDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationRegisterEvent value)? register,
    TResult? Function(ReservationSetDateEvent value)? setDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationRegisterEvent value)? register,
    TResult Function(ReservationSetDateEvent value)? setDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationEventCopyWith<$Res> {
  factory $ReservationEventCopyWith(
          ReservationEvent value, $Res Function(ReservationEvent) then) =
      _$ReservationEventCopyWithImpl<$Res, ReservationEvent>;
}

/// @nodoc
class _$ReservationEventCopyWithImpl<$Res, $Val extends ReservationEvent>
    implements $ReservationEventCopyWith<$Res> {
  _$ReservationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReservationRegisterEventImplCopyWith<$Res> {
  factory _$$ReservationRegisterEventImplCopyWith(
          _$ReservationRegisterEventImpl value,
          $Res Function(_$ReservationRegisterEventImpl) then) =
      __$$ReservationRegisterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Reservation reservation});

  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class __$$ReservationRegisterEventImplCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res, _$ReservationRegisterEventImpl>
    implements _$$ReservationRegisterEventImplCopyWith<$Res> {
  __$$ReservationRegisterEventImplCopyWithImpl(
      _$ReservationRegisterEventImpl _value,
      $Res Function(_$ReservationRegisterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservation = null,
  }) {
    return _then(_$ReservationRegisterEventImpl(
      null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReservationCopyWith<$Res> get reservation {
    return $ReservationCopyWith<$Res>(_value.reservation, (value) {
      return _then(_value.copyWith(reservation: value));
    });
  }
}

/// @nodoc

class _$ReservationRegisterEventImpl implements ReservationRegisterEvent {
  const _$ReservationRegisterEventImpl(this.reservation);

  @override
  final Reservation reservation;

  @override
  String toString() {
    return 'ReservationEvent.register(reservation: $reservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationRegisterEventImpl &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationRegisterEventImplCopyWith<_$ReservationRegisterEventImpl>
      get copyWith => __$$ReservationRegisterEventImplCopyWithImpl<
          _$ReservationRegisterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) register,
    required TResult Function(DateTime date) setDate,
  }) {
    return register(reservation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reservation reservation)? register,
    TResult? Function(DateTime date)? setDate,
  }) {
    return register?.call(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? register,
    TResult Function(DateTime date)? setDate,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(reservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationRegisterEvent value) register,
    required TResult Function(ReservationSetDateEvent value) setDate,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationRegisterEvent value)? register,
    TResult? Function(ReservationSetDateEvent value)? setDate,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationRegisterEvent value)? register,
    TResult Function(ReservationSetDateEvent value)? setDate,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class ReservationRegisterEvent implements ReservationEvent {
  const factory ReservationRegisterEvent(final Reservation reservation) =
      _$ReservationRegisterEventImpl;

  Reservation get reservation;
  @JsonKey(ignore: true)
  _$$ReservationRegisterEventImplCopyWith<_$ReservationRegisterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReservationSetDateEventImplCopyWith<$Res> {
  factory _$$ReservationSetDateEventImplCopyWith(
          _$ReservationSetDateEventImpl value,
          $Res Function(_$ReservationSetDateEventImpl) then) =
      __$$ReservationSetDateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$ReservationSetDateEventImplCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res, _$ReservationSetDateEventImpl>
    implements _$$ReservationSetDateEventImplCopyWith<$Res> {
  __$$ReservationSetDateEventImplCopyWithImpl(
      _$ReservationSetDateEventImpl _value,
      $Res Function(_$ReservationSetDateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$ReservationSetDateEventImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ReservationSetDateEventImpl implements ReservationSetDateEvent {
  const _$ReservationSetDateEventImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ReservationEvent.setDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationSetDateEventImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationSetDateEventImplCopyWith<_$ReservationSetDateEventImpl>
      get copyWith => __$$ReservationSetDateEventImplCopyWithImpl<
          _$ReservationSetDateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) register,
    required TResult Function(DateTime date) setDate,
  }) {
    return setDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reservation reservation)? register,
    TResult? Function(DateTime date)? setDate,
  }) {
    return setDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? register,
    TResult Function(DateTime date)? setDate,
    required TResult orElse(),
  }) {
    if (setDate != null) {
      return setDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationRegisterEvent value) register,
    required TResult Function(ReservationSetDateEvent value) setDate,
  }) {
    return setDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationRegisterEvent value)? register,
    TResult? Function(ReservationSetDateEvent value)? setDate,
  }) {
    return setDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationRegisterEvent value)? register,
    TResult Function(ReservationSetDateEvent value)? setDate,
    required TResult orElse(),
  }) {
    if (setDate != null) {
      return setDate(this);
    }
    return orElse();
  }
}

abstract class ReservationSetDateEvent implements ReservationEvent {
  const factory ReservationSetDateEvent(final DateTime date) =
      _$ReservationSetDateEventImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$ReservationSetDateEventImplCopyWith<_$ReservationSetDateEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
