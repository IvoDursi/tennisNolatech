import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'internet_connection_event.freezed.dart';

@freezed
class InternetConnectionEvent with _$InternetConnectionEvent {
  const factory InternetConnectionEvent.init() = InternetConnectionInitEvent;

  const factory InternetConnectionEvent.change(
      InternetConnectionStatus status) = InternetConnectionChangeEvent;
}
