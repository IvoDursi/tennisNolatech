import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:nolatech/app/bloc/bloc.dart';

class InternetConnectionBloc
    extends Bloc<InternetConnectionEvent, InternetConnectionState> {
  InternetConnectionBloc() : super(const InternetConnectionState.initial()) {
    on<InternetConnectionInitEvent>(_onInit);
    on<InternetConnectionChangeEvent>(_onChange);
  }

  /// Stream de conexión
  StreamSubscription<InternetConnectionStatus>? connectionStreamSubscription;

  /// Iinicializa el bloc para escuchar los cambios de conexión
  /// y emitir el estado de conexión actual
  Future<void> _onInit(
    InternetConnectionInitEvent event,
    Emitter<InternetConnectionState> emit,
  ) async {
    final simpleConnectionChecker = InternetConnectionChecker();

    await connectionStreamSubscription?.cancel();
    connectionStreamSubscription =
        simpleConnectionChecker.onStatusChange.listen(
      (status) {
        add(InternetConnectionEvent.change(status));
      },
    );
  }

  /// Emite el estado de conexión actual dependiendo del evento recibido
  Future<void> _onChange(
    InternetConnectionChangeEvent event,
    Emitter<InternetConnectionState> emit,
  ) async {
    switch (event.status) {
      case InternetConnectionStatus.connected:
        emit(const InternetConnectionState.connected());
        break;
      case InternetConnectionStatus.disconnected:
        emit(const InternetConnectionState.noConnected());
        break;
    }
  }

  /// Cierra el stream de conexión y el bloc
  @override
  Future<void> close() {
    connectionStreamSubscription?.cancel();
    return super.close();
  }
}
