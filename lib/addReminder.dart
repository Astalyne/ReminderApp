import 'package:flutter/material.dart';
import 'dateTime.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
class addReminder extends StatefulWidget{
  @override
  addReminderState createState() => addReminderState();
}



class addReminderState extends State<addReminder> {
  dateTime dateTimeWidget = new dateTime();
  DateTime date;



  DateTime dateT;

  InputType inputType = InputType.both;

  final formats = {
    InputType.both: DateFormat("EEEE, MMMM d, yyyy 'at' h:mma"),
    InputType.date: DateFormat('yyyy-MM-dd'),
    InputType.time: DateFormat("HH:mm"),
  };






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a Reminder'),

      ),
      body:
      new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
            child: new ListView(
              children: <Widget>[

            new TextFormField(
            keyboardType: TextInputType.text,
              // Use email input type for emails.
              decoration: new InputDecoration(
                hintText: 'Title of reminder',
              ),

            ),
            DateTimePickerFormField(
              inputType: InputType.both,
              editable: true,
              format: formats[inputType],
              decoration: InputDecoration(
                  labelText: 'Date/Time', hasFloatingPlaceholder: false),
              onChanged: (dt) {
                setState(() => dateT = dt);
              },

            ),
            RaisedButton(
            child: Text('Save'),
        onPressed: () {
          Navigator.pop(context);
        },
      )
      ],
    ),)
    ,
    )
    ,
    );

  }
  dateAndTimeWidget(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_)=>  dateTime()),
    );

}

}