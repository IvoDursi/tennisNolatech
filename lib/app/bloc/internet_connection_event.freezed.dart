// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_connection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InternetConnectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(InternetConnectionStatus status) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(InternetConnectionStatus status)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(InternetConnectionStatus status)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternetConnectionInitEvent value) init,
    required TResult Function(InternetConnectionChangeEvent value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InternetConnectionInitEvent value)? init,
    TResult? Function(InternetConnectionChangeEvent value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternetConnectionInitEvent value)? init,
    TResult Function(InternetConnectionChangeEvent value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectionEventCopyWith<$Res> {
  factory $InternetConnectionEventCopyWith(InternetConnectionEvent value,
          $Res Function(InternetConnectionEvent) then) =
      _$InternetConnectionEventCopyWithImpl<$Res, InternetConnectionEvent>;
}

/// @nodoc
class _$InternetConnectionEventCopyWithImpl<$Res,
        $Val extends InternetConnectionEvent>
    implements $InternetConnectionEventCopyWith<$Res> {
  _$InternetConnectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InternetConnectionInitEventImplCopyWith<$Res> {
  factory _$$InternetConnectionInitEventImplCopyWith(
          _$InternetConnectionInitEventImpl value,
          $Res Function(_$InternetConnectionInitEventImpl) then) =
      __$$InternetConnectionInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternetConnectionInitEventImplCopyWithImpl<$Res>
    extends _$InternetConnectionEventCopyWithImpl<$Res,
        _$InternetConnectionInitEventImpl>
    implements _$$InternetConnectionInitEventImplCopyWith<$Res> {
  __$$InternetConnectionInitEventImplCopyWithImpl(
      _$InternetConnectionInitEventImpl _value,
      $Res Function(_$InternetConnectionInitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InternetConnectionInitEventImpl implements InternetConnectionInitEvent {
  const _$InternetConnectionInitEventImpl();

  @override
  String toString() {
    return 'InternetConnectionEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetConnectionInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(InternetConnectionStatus status) change,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(InternetConnectionStatus status)? change,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(InternetConnectionStatus status)? change,
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
    required TResult Function(InternetConnectionInitEvent value) init,
    required TResult Function(InternetConnectionChangeEvent value) change,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InternetConnectionInitEvent value)? init,
    TResult? Function(InternetConnectionChangeEvent value)? change,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternetConnectionInitEvent value)? init,
    TResult Function(InternetConnectionChangeEvent value)? change,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InternetConnectionInitEvent implements InternetConnectionEvent {
  const factory InternetConnectionInitEvent() =
      _$InternetConnectionInitEventImpl;
}

/// @nodoc
abstract class _$$InternetConnectionChangeEventImplCopyWith<$Res> {
  factory _$$InternetConnectionChangeEventImplCopyWith(
          _$InternetConnectionChangeEventImpl value,
          $Res Function(_$InternetConnectionChangeEventImpl) then) =
      __$$InternetConnectionChangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InternetConnectionStatus status});
}

/// @nodoc
class __$$InternetConnectionChangeEventImplCopyWithImpl<$Res>
    extends _$InternetConnectionEventCopyWithImpl<$Res,
        _$InternetConnectionChangeEventImpl>
    implements _$$InternetConnectionChangeEventImplCopyWith<$Res> {
  __$$InternetConnectionChangeEventImplCopyWithImpl(
      _$InternetConnectionChangeEventImpl _value,
      $Res Function(_$InternetConnectionChangeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$InternetConnectionChangeEventImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InternetConnectionStatus,
    ));
  }
}

/// @nodoc

class _$InternetConnectionChangeEventImpl
    implements InternetConnectionChangeEvent {
  const _$InternetConnectionChangeEventImpl(this.status);

  @override
  final InternetConnectionStatus status;

  @override
  String toString() {
    return 'InternetConnectionEvent.change(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetConnectionChangeEventImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetConnectionChangeEventImplCopyWith<
          _$InternetConnectionChangeEventImpl>
      get copyWith => __$$InternetConnectionChangeEventImplCopyWithImpl<
          _$InternetConnectionChangeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(InternetConnectionStatus status) change,
  }) {
    return change(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(InternetConnectionStatus status)? change,
  }) {
    return change?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(InternetConnectionStatus status)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternetConnectionInitEvent value) init,
    required TResult Function(InternetConnectionChangeEvent value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InternetConnectionInitEvent value)? init,
    TResult? Function(InternetConnectionChangeEvent value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternetConnectionInitEvent value)? init,
    TResult Function(InternetConnectionChangeEvent value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class InternetConnectionChangeEvent
    implements InternetConnectionEvent {
  const factory InternetConnectionChangeEvent(
          final InternetConnectionStatus status) =
      _$InternetConnectionChangeEventImpl;

  InternetConnectionStatus get status;
  @JsonKey(ignore: true)
  _$$InternetConnectionChangeEventImplCopyWith<
          _$InternetConnectionChangeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
