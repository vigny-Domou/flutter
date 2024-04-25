import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class DateInput extends StatefulWidget {
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String? label;
  final TextEditingController controller;
   DateTime? selectedDate;

   DateInput( {Key? key,  required this.controller,  required this.label, this.lastDate, this.firstDate, this.initialDate, this.selectedDate}):super(key: key);
  @override
  _DateInputState createState() => _DateInputState();
}


class _DateInputState extends State<DateInput> {

  
  

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextField(
          focusNode: AlwaysDisabledFocusNode(),
          controller: widget.controller,
          decoration: InputDecoration(
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
          onTap: () {
            _selectDate(context);
          },
        ),
      );
  }

  _selectDate(BuildContext context) async {
    DateTime? newSelectedDate = await showDatePicker(
        context: context,
        initialDate: widget.initialDate ?? DateTime.now(),
        firstDate: widget.firstDate?? DateTime(2000),
        lastDate: widget.lastDate?? DateTime(2100),
        fieldHintText: widget.label,
        );

    if (newSelectedDate != null) {
      widget.selectedDate = newSelectedDate;
      widget.controller
        ..text = DateFormat.yMMMd().format(widget.selectedDate!)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: widget.controller.text.length,
            affinity: TextAffinity.upstream));
    }
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}



DateInput dateInput = DateInput(controller: TextEditingController(), label: "Label");
DateInput dateInput1 = DateInput(controller: TextEditingController(), label: "Label", initialDate: DateTime(1900),);