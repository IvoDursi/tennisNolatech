// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reserved_days_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReservedDaysEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservedDaysInitEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservedDaysInitEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservedDaysInitEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservedDaysEventCopyWith<$Res> {
  factory $ReservedDaysEventCopyWith(
          ReservedDaysEvent value, $Res Function(ReservedDaysEvent) then) =
      _$ReservedDaysEventCopyWithImpl<$Res, ReservedDaysEvent>;
}

/// @nodoc
class _$ReservedDaysEventCopyWithImpl<$Res, $Val extends ReservedDaysEvent>
    implements $ReservedDaysEventCopyWith<$Res> {
  _$ReservedDaysEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReservedDaysInitEventImplCopyWith<$Res> {
  factory _$$ReservedDaysInitEventImplCopyWith(
          _$ReservedDaysInitEventImpl value,
          $Res Function(_$ReservedDaysInitEventImpl) then) =
      __$$ReservedDaysInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReservedDaysInitEventImplCopyWithImpl<$Res>
    extends _$ReservedDaysEventCopyWithImpl<$Res, _$ReservedDaysInitEventImpl>
    implements _$$ReservedDaysInitEventImplCopyWith<$Res> {
  __$$ReservedDaysInitEventImplCopyWithImpl(_$ReservedDaysInitEventImpl _value,
      $Res Function(_$ReservedDaysInitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReservedDaysInitEventImpl implements ReservedDaysInitEvent {
  const _$ReservedDaysInitEventImpl();

  @override
  String toString() {
    return 'ReservedDaysEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservedDaysInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
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
    required TResult Function(ReservedDaysInitEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservedDaysInitEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservedDaysInitEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ReservedDaysInitEvent implements ReservedDaysEvent {
  const factory ReservedDaysInitEvent() = _$ReservedDaysInitEventImpl;
}
