import 'package:freezed_annotation/freezed_annotation.dart';

part 'hour_dto.freezed.dart';
part 'hour_dto.g.dart';

@freezed
class HourDTO with _$HourDTO {
  const factory HourDTO({
    @JsonKey(name: 'chance_of_rain') required int chanceOfRain,
  }) = _HourDTO;

  factory HourDTO.fromJson(Map<String, dynamic> json) =>
      _$HourDTOFromJson(json);
}
