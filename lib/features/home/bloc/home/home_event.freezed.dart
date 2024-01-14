// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Reservation reservation) removeReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Reservation reservation)? removeReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Reservation reservation)? removeReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitEvent value) init,
    required TResult Function(HomeRemoveReservationEvent value)
        removeReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitEvent value)? init,
    TResult? Function(HomeRemoveReservationEvent value)? removeReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitEvent value)? init,
    TResult Function(HomeRemoveReservationEvent value)? removeReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeInitEventImplCopyWith<$Res> {
  factory _$$HomeInitEventImplCopyWith(
          _$HomeInitEventImpl value, $Res Function(_$HomeInitEventImpl) then) =
      __$$HomeInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeInitEventImpl>
    implements _$$HomeInitEventImplCopyWith<$Res> {
  __$$HomeInitEventImplCopyWithImpl(
      _$HomeInitEventImpl _value, $Res Function(_$HomeInitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeInitEventImpl implements HomeInitEvent {
  const _$HomeInitEventImpl();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Reservation reservation) removeReservation,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Reservation reservation)? removeReservation,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Reservation reservation)? removeReservation,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitEvent value) init,
    required TResult Function(HomeRemoveReservationEvent value)
        removeReservation,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitEvent value)? init,
    TResult? Function(HomeRemoveReservationEvent value)? removeReservation,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitEvent value)? init,
    TResult Function(HomeRemoveReservationEvent value)? removeReservation,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class HomeInitEvent implements HomeEvent {
  const factory HomeInitEvent() = _$HomeInitEventImpl;
}

/// @nodoc
abstract class _$$HomeRemoveReservationEventImplCopyWith<$Res> {
  factory _$$HomeRemoveReservationEventImplCopyWith(
          _$HomeRemoveReservationEventImpl value,
          $Res Function(_$HomeRemoveReservationEventImpl) then) =
      __$$HomeRemoveReservationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Reservation reservation});

  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class __$$HomeRemoveReservationEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeRemoveReservationEventImpl>
    implements _$$HomeRemoveReservationEventImplCopyWith<$Res> {
  __$$HomeRemoveReservationEventImplCopyWithImpl(
      _$HomeRemoveReservationEventImpl _value,
      $Res Function(_$HomeRemoveReservationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservation = null,
  }) {
    return _then(_$HomeRemoveReservationEventImpl(
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

class _$HomeRemoveReservationEventImpl implements HomeRemoveReservationEvent {
  const _$HomeRemoveReservationEventImpl(this.reservation);

  @override
  final Reservation reservation;

  @override
  String toString() {
    return 'HomeEvent.removeReservation(reservation: $reservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRemoveReservationEventImpl &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeRemoveReservationEventImplCopyWith<_$HomeRemoveReservationEventImpl>
      get copyWith => __$$HomeRemoveReservationEventImplCopyWithImpl<
          _$HomeRemoveReservationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Reservation reservation) removeReservation,
  }) {
    return removeReservation(reservation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Reservation reservation)? removeReservation,
  }) {
    return removeReservation?.call(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Reservation reservation)? removeReservation,
    required TResult orElse(),
  }) {
    if (removeReservation != null) {
      return removeReservation(reservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitEvent value) init,
    required TResult Function(HomeRemoveReservationEvent value)
        removeReservation,
  }) {
    return removeReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitEvent value)? init,
    TResult? Function(HomeRemoveReservationEvent value)? removeReservation,
  }) {
    return removeReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitEvent value)? init,
    TResult Function(HomeRemoveReservationEvent value)? removeReservation,
    required TResult orElse(),
  }) {
    if (removeReservation != null) {
      return removeReservation(this);
    }
    return orElse();
  }
}

abstract class HomeRemoveReservationEvent implements HomeEvent {
  const factory HomeRemoveReservationEvent(final Reservation reservation) =
      _$HomeRemoveReservationEventImpl;

  Reservation get reservation;
  @JsonKey(ignore: true)
  _$$HomeRemoveReservationEventImplCopyWith<_$HomeRemoveReservationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
