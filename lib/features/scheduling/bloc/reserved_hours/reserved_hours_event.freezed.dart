// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reserved_hours_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReservedHoursEvent {
  DateTime get selectedDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservedHoursInitEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservedHoursInitEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservedHoursInitEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReservedHoursEventCopyWith<ReservedHoursEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservedHoursEventCopyWith<$Res> {
  factory $ReservedHoursEventCopyWith(
          ReservedHoursEvent value, $Res Function(ReservedHoursEvent) then) =
      _$ReservedHoursEventCopyWithImpl<$Res, ReservedHoursEvent>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class _$ReservedHoursEventCopyWithImpl<$Res, $Val extends ReservedHoursEvent>
    implements $ReservedHoursEventCopyWith<$Res> {
  _$ReservedHoursEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservedHoursInitEventImplCopyWith<$Res>
    implements $ReservedHoursEventCopyWith<$Res> {
  factory _$$ReservedHoursInitEventImplCopyWith(
          _$ReservedHoursInitEventImpl value,
          $Res Function(_$ReservedHoursInitEventImpl) then) =
      __$$ReservedHoursInitEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$ReservedHoursInitEventImplCopyWithImpl<$Res>
    extends _$ReservedHoursEventCopyWithImpl<$Res, _$ReservedHoursInitEventImpl>
    implements _$$ReservedHoursInitEventImplCopyWith<$Res> {
  __$$ReservedHoursInitEventImplCopyWithImpl(
      _$ReservedHoursInitEventImpl _value,
      $Res Function(_$ReservedHoursInitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$ReservedHoursInitEventImpl(
      null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ReservedHoursInitEventImpl implements ReservedHoursInitEvent {
  const _$ReservedHoursInitEventImpl(this.selectedDate);

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'ReservedHoursEvent.init(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservedHoursInitEventImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservedHoursInitEventImplCopyWith<_$ReservedHoursInitEventImpl>
      get copyWith => __$$ReservedHoursInitEventImplCopyWithImpl<
          _$ReservedHoursInitEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) init,
  }) {
    return init(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? init,
  }) {
    return init?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservedHoursInitEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservedHoursInitEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservedHoursInitEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ReservedHoursInitEvent implements ReservedHoursEvent {
  const factory ReservedHoursInitEvent(final DateTime selectedDate) =
      _$ReservedHoursInitEventImpl;

  @override
  DateTime get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$ReservedHoursInitEventImplCopyWith<_$ReservedHoursInitEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
