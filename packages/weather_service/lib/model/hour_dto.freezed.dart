// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hour_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HourDTO _$HourDTOFromJson(Map<String, dynamic> json) {
  return _HourDTO.fromJson(json);
}

/// @nodoc
mixin _$HourDTO {
  @JsonKey(name: 'chance_of_rain')
  int get chanceOfRain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourDTOCopyWith<HourDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourDTOCopyWith<$Res> {
  factory $HourDTOCopyWith(HourDTO value, $Res Function(HourDTO) then) =
      _$HourDTOCopyWithImpl<$Res, HourDTO>;
  @useResult
  $Res call({@JsonKey(name: 'chance_of_rain') int chanceOfRain});
}

/// @nodoc
class _$HourDTOCopyWithImpl<$Res, $Val extends HourDTO>
    implements $HourDTOCopyWith<$Res> {
  _$HourDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chanceOfRain = null,
  }) {
    return _then(_value.copyWith(
      chanceOfRain: null == chanceOfRain
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourDTOImplCopyWith<$Res> implements $HourDTOCopyWith<$Res> {
  factory _$$HourDTOImplCopyWith(
          _$HourDTOImpl value, $Res Function(_$HourDTOImpl) then) =
      __$$HourDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'chance_of_rain') int chanceOfRain});
}

/// @nodoc
class __$$HourDTOImplCopyWithImpl<$Res>
    extends _$HourDTOCopyWithImpl<$Res, _$HourDTOImpl>
    implements _$$HourDTOImplCopyWith<$Res> {
  __$$HourDTOImplCopyWithImpl(
      _$HourDTOImpl _value, $Res Function(_$HourDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chanceOfRain = null,
  }) {
    return _then(_$HourDTOImpl(
      chanceOfRain: null == chanceOfRain
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourDTOImpl implements _HourDTO {
  const _$HourDTOImpl(
      {@JsonKey(name: 'chance_of_rain') required this.chanceOfRain});

  factory _$HourDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourDTOImplFromJson(json);

  @override
  @JsonKey(name: 'chance_of_rain')
  final int chanceOfRain;

  @override
  String toString() {
    return 'HourDTO(chanceOfRain: $chanceOfRain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourDTOImpl &&
            (identical(other.chanceOfRain, chanceOfRain) ||
                other.chanceOfRain == chanceOfRain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chanceOfRain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourDTOImplCopyWith<_$HourDTOImpl> get copyWith =>
      __$$HourDTOImplCopyWithImpl<_$HourDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourDTOImplToJson(
      this,
    );
  }
}

abstract class _HourDTO implements HourDTO {
  const factory _HourDTO(
          {@JsonKey(name: 'chance_of_rain') required final int chanceOfRain}) =
      _$HourDTOImpl;

  factory _HourDTO.fromJson(Map<String, dynamic> json) = _$HourDTOImpl.fromJson;

  @override
  @JsonKey(name: 'chance_of_rain')
  int get chanceOfRain;
  @override
  @JsonKey(ignore: true)
  _$$HourDTOImplCopyWith<_$HourDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
