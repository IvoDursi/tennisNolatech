// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rain_chances_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RainChancesEvent {
  List<Reservation> get reservations => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Reservation> reservations) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Reservation> reservations)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Reservation> reservations)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RainChancesInitEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RainChancesInitEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RainChancesInitEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RainChancesEventCopyWith<RainChancesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainChancesEventCopyWith<$Res> {
  factory $RainChancesEventCopyWith(
          RainChancesEvent value, $Res Function(RainChancesEvent) then) =
      _$RainChancesEventCopyWithImpl<$Res, RainChancesEvent>;
  @useResult
  $Res call({List<Reservation> reservations});
}

/// @nodoc
class _$RainChancesEventCopyWithImpl<$Res, $Val extends RainChancesEvent>
    implements $RainChancesEventCopyWith<$Res> {
  _$RainChancesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservations = null,
  }) {
    return _then(_value.copyWith(
      reservations: null == reservations
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RainChancesInitEventImplCopyWith<$Res>
    implements $RainChancesEventCopyWith<$Res> {
  factory _$$RainChancesInitEventImplCopyWith(_$RainChancesInitEventImpl value,
          $Res Function(_$RainChancesInitEventImpl) then) =
      __$$RainChancesInitEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Reservation> reservations});
}

/// @nodoc
class __$$RainChancesInitEventImplCopyWithImpl<$Res>
    extends _$RainChancesEventCopyWithImpl<$Res, _$RainChancesInitEventImpl>
    implements _$$RainChancesInitEventImplCopyWith<$Res> {
  __$$RainChancesInitEventImplCopyWithImpl(_$RainChancesInitEventImpl _value,
      $Res Function(_$RainChancesInitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservations = null,
  }) {
    return _then(_$RainChancesInitEventImpl(
      null == reservations
          ? _value._reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>,
    ));
  }
}

/// @nodoc

class _$RainChancesInitEventImpl implements RainChancesInitEvent {
  const _$RainChancesInitEventImpl(final List<Reservation> reservations)
      : _reservations = reservations;

  final List<Reservation> _reservations;
  @override
  List<Reservation> get reservations {
    if (_reservations is EqualUnmodifiableListView) return _reservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservations);
  }

  @override
  String toString() {
    return 'RainChancesEvent.init(reservations: $reservations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainChancesInitEventImpl &&
            const DeepCollectionEquality()
                .equals(other._reservations, _reservations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reservations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RainChancesInitEventImplCopyWith<_$RainChancesInitEventImpl>
      get copyWith =>
          __$$RainChancesInitEventImplCopyWithImpl<_$RainChancesInitEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Reservation> reservations) init,
  }) {
    return init(reservations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Reservation> reservations)? init,
  }) {
    return init?.call(reservations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Reservation> reservations)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(reservations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RainChancesInitEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RainChancesInitEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RainChancesInitEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class RainChancesInitEvent implements RainChancesEvent {
  const factory RainChancesInitEvent(final List<Reservation> reservations) =
      _$RainChancesInitEventImpl;

  @override
  List<Reservation> get reservations;
  @override
  @JsonKey(ignore: true)
  _$$RainChancesInitEventImplCopyWith<_$RainChancesInitEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
