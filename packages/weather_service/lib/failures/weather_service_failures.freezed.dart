// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_service_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherServiceFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failure,
    required TResult Function() noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? failure,
    TResult? Function()? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failure,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceFailure value) failure,
    required TResult Function(ServiceNoConnectionFailure value) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceFailure value)? failure,
    TResult? Function(ServiceNoConnectionFailure value)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceFailure value)? failure,
    TResult Function(ServiceNoConnectionFailure value)? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherServiceFailuresCopyWith<$Res> {
  factory $WeatherServiceFailuresCopyWith(WeatherServiceFailures value,
          $Res Function(WeatherServiceFailures) then) =
      _$WeatherServiceFailuresCopyWithImpl<$Res, WeatherServiceFailures>;
}

/// @nodoc
class _$WeatherServiceFailuresCopyWithImpl<$Res,
        $Val extends WeatherServiceFailures>
    implements $WeatherServiceFailuresCopyWith<$Res> {
  _$WeatherServiceFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServiceFailureImplCopyWith<$Res> {
  factory _$$ServiceFailureImplCopyWith(_$ServiceFailureImpl value,
          $Res Function(_$ServiceFailureImpl) then) =
      __$$ServiceFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceFailureImplCopyWithImpl<$Res>
    extends _$WeatherServiceFailuresCopyWithImpl<$Res, _$ServiceFailureImpl>
    implements _$$ServiceFailureImplCopyWith<$Res> {
  __$$ServiceFailureImplCopyWithImpl(
      _$ServiceFailureImpl _value, $Res Function(_$ServiceFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceFailureImpl implements ServiceFailure {
  const _$ServiceFailureImpl();

  @override
  String toString() {
    return 'WeatherServiceFailures.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failure,
    required TResult Function() noConnection,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? failure,
    TResult? Function()? noConnection,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failure,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceFailure value) failure,
    required TResult Function(ServiceNoConnectionFailure value) noConnection,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceFailure value)? failure,
    TResult? Function(ServiceNoConnectionFailure value)? noConnection,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceFailure value)? failure,
    TResult Function(ServiceNoConnectionFailure value)? noConnection,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ServiceFailure implements WeatherServiceFailures {
  const factory ServiceFailure() = _$ServiceFailureImpl;
}

/// @nodoc
abstract class _$$ServiceNoConnectionFailureImplCopyWith<$Res> {
  factory _$$ServiceNoConnectionFailureImplCopyWith(
          _$ServiceNoConnectionFailureImpl value,
          $Res Function(_$ServiceNoConnectionFailureImpl) then) =
      __$$ServiceNoConnectionFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceNoConnectionFailureImplCopyWithImpl<$Res>
    extends _$WeatherServiceFailuresCopyWithImpl<$Res,
        _$ServiceNoConnectionFailureImpl>
    implements _$$ServiceNoConnectionFailureImplCopyWith<$Res> {
  __$$ServiceNoConnectionFailureImplCopyWithImpl(
      _$ServiceNoConnectionFailureImpl _value,
      $Res Function(_$ServiceNoConnectionFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceNoConnectionFailureImpl implements ServiceNoConnectionFailure {
  const _$ServiceNoConnectionFailureImpl();

  @override
  String toString() {
    return 'WeatherServiceFailures.noConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceNoConnectionFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() failure,
    required TResult Function() noConnection,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? failure,
    TResult? Function()? noConnection,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? failure,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceFailure value) failure,
    required TResult Function(ServiceNoConnectionFailure value) noConnection,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceFailure value)? failure,
    TResult? Function(ServiceNoConnectionFailure value)? noConnection,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceFailure value)? failure,
    TResult Function(ServiceNoConnectionFailure value)? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class ServiceNoConnectionFailure implements WeatherServiceFailures {
  const factory ServiceNoConnectionFailure() = _$ServiceNoConnectionFailureImpl;
}
