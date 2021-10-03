import 'package:flutter/material.dart';

class SendFeedbackPage extends StatefulWidget {
  @override
  _SendFeedbackPageState createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'How was the Experience throughout the App??',
          labelStyle: TextStyle(
              fontSize: 20.0
          ),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 10.0,
          ),

        ),
        style: TextStyle(
            fontSize: 14.0
        ),
      ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(onPressed: (){

          },
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(25),
            ),
            color: Colors.blueAccent,
            textColor: Colors.white,
            child: Text('Submit',
              style: TextStyle(
                  fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
