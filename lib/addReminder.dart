import 'package:flutter/material.dart';
import 'dateTime.dart';





class addReminder extends StatelessWidget {
  dateTime dateTimeWidget = new dateTime();
  DateTime date;

  final key = new GlobalKey<dateTimeState>();

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
            new dateTime(),
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
      MaterialPageRoute(builder: (_)=> new dateTime()),
    );

}

}