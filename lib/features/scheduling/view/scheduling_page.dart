import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nolatech/extensions/extensions.dart';
import 'package:nolatech/features/home/home.dart';
import 'package:nolatech/features/scheduling/bloc/bloc.dart';
import 'package:nolatech/features/scheduling/scheduling.dart';
import 'package:nolatech/features/scheduling/widget/icon_info.dart';
import 'package:nolatech/map/view/view.dart';
import 'package:tennis_nolatech_repository/models/reservation.dart';

class SchedulingPage extends StatefulWidget {
  const SchedulingPage({
    super.key,
    required this.field,
  });

  final Field field;

  @override
  State<SchedulingPage> createState() => _SchedulingPageState();
}

class _SchedulingPageState extends State<SchedulingPage> {
  final _textController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReservationBloc, ReservationState>(
      listener: (context, state) {
        state.maybeWhen(
          failed: (failure) => _showErrorSnackBar(
            context,
            failure.maybeWhen(
              orElse: () => 'No se pudo realizar la reserva',
              weatherService: (serviceFailure) => serviceFailure.maybeWhen(
                orElse: () => 'No se pudo realizar la reserva',
                noConnection: () => 'No hay conexión a internet',
              ),
            ),
          ),
          registered: () {
            context.read<HomeBloc>().add(const HomeEvent.init());
            Navigator.pop(context);
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: SchedulingAppBar(
          field: widget.field,
        ),
        body: Column(
          children: [
            Container(
              height: 110,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color(0xff0a3740),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconInfo(icon: Icons.map, content: widget.field.location),
                      const Spacer(),
                      SizedBox(
                        width: 150,
                        height: 35,
                        child: ElevatedButton.icon(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReservationLocation(
                                field: widget.field,
                              ),
                            ),
                          ),
                          icon: const Icon(
                            Icons.place,
                            size: 20,
                            color: Color(0xff0a3740),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          label: const Text(
                            'Ver en mapa',
                            style: TextStyle(
                              color: Color(0xff0a3740),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const IconInfo(
                    icon: Icons.phone,
                    content: '11-64552288',
                  ),
                  const IconInfo(
                    icon: Icons.monetization_on,
                    content: '12',
                  ),
                ],
              ),
            ),
            Form(
              key: _formKey,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(25),
                          ],
                          controller: _textController,
                          decoration: const InputDecoration(
                            labelText: 'Nombre',
                            prefixIcon: Icon(Icons.person),
                          ),
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Campo obligatorio';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      DatePickerForm(
                        onDateSelect: (date) => selectedDate = date,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (selectedDate == null) {
                      _showErrorSnackBar(
                        context,
                        'Debe seleccionar una fecha valida',
                      );
                      return;
                    }
                    if (selectedDate?.hour == 0) {
                      _showErrorSnackBar(
                        context,
                        'Debe seleccionar un horario valido',
                      );
                      return;
                    }
                    final reserve = Reservation(
                      name: _textController.text,
                      field: widget.field.name,
                      date: selectedDate!,
                    );

                    context
                        .read<ReservationBloc>()
                        .add(ReservationEvent.register(reserve));
                  }
                },
                child: const Text('Realizar reserva'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red[900],
        margin: const EdgeInsets.all(16),
        behavior: SnackBarBehavior.floating,
        content: Text(message),
      ),
    );
  }
}
