import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_connection_state.freezed.dart';

@freezed
class InternetConnectionState with _$InternetConnectionState {
  const factory InternetConnectionState.initial() =
      InternetConnectionInitialState;

  const factory InternetConnectionState.connected() =
      InternetConnectionConnectedState;

  const factory InternetConnectionState.noConnected() =
      InternetConnectionNoConnectedState;
}
