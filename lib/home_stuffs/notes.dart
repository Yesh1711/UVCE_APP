import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text("Donate",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),),
            ),
          ),
        ),
        SizedBox(
          height: 30
        ),
        Container(
          child: Image(
            image: AssetImage(
              'assets/qr.JPG'
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        FloatingActionButton(
            onPressed: (){},
          child: Text('PAY'),

        )
      ],
    );
  }
}
