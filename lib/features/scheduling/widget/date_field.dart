import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nolatech/features/scheduling/bloc/bloc.dart';
import 'package:nolatech/features/scheduling/scheduling.dart';
import 'package:nolatech/app/utils/utils.dart';

class DatePickerForm extends StatefulWidget {
  const DatePickerForm({super.key, required this.onDateSelect});

  final void Function(DateTime? selectedDate) onDateSelect;

  @override
  State<DatePickerForm> createState() => _DatePickerFormState();
}

class _DatePickerFormState extends State<DatePickerForm> {
  final _dateController = TextEditingController();

  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservedDaysBloc, ReservedDaysState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        loaded: (reservedDates) => Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          readOnly: true,
                          controller: _dateController,
                          decoration: InputDecoration(
                            labelText: 'Fecha de reserva',
                            prefixIcon: IconButton(
                              icon: const Icon(Icons.calendar_today),
                              onPressed: () {
                                _selectDate(context, reservedDates);
                              },
                            ),
                          ),
                          onTap: () {
                            _selectDate(context, reservedDates);
                          },
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Debes seleccionar una fecha';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: 70,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: BlocBuilder<ReservationBloc, ReservationState>(
                          builder: (context, state) => state.maybeWhen(
                            orElse: () => const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '0 %',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.water_drop,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            loaded: (rainChances) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '$rainChances%',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                const Icon(
                                  Icons.water_drop,
                                  color: Colors.lightBlue,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            HourRange(
              onSelect: (hour) {
                selectedDate = selectedDate?.copyWith(hour: hour);
                widget.onDateSelect(selectedDate);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(
      BuildContext context, List<DateTime> lockedDates) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? availableDefaultDate(lockedDates),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      selectableDayPredicate: (DateTime date) =>
          !lockedDates.any((e) => e.day == date.day),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      selectedDate = pickedDate;
      _dateController.text = selectedDate!.toLocal().toString().split(' ')[0];
      if (mounted) {
        context
            .read<ReservationBloc>()
            .add(ReservationEvent.setDate(selectedDate!));

        context
            .read<ReservedHoursBloc>()
            .add(ReservedHoursEvent.init(selectedDate!));

        setState(() {});
      }
    }
  }
}
