import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
class dateTime extends StatefulWidget{
    @override
  dateTimeState createState() => dateTimeState();

}
class dateTimeState extends State<dateTime>{

   DateTime dateT;

  InputType inputType = InputType.both;

  final formats = {
    InputType.both: DateFormat("EEEE, MMMM d, yyyy 'at' h:mma"),
    InputType.date: DateFormat('yyyy-MM-dd'),
    InputType.time: DateFormat("HH:mm"),
  };

  Widget build(BuildContext context) => Container(
      child: DateTimePickerFormField(
        inputType: InputType.both,
        editable: true,
        format: formats[inputType],
        decoration: InputDecoration(
            labelText: 'Date/Time', hasFloatingPlaceholder: false),
        onChanged: (dt) {
          setState(() => dateT = dt);
          Navigator.of(context).pop(dateT);
        },

      )


  );


}

