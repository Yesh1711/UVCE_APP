import 'package:flutter/material.dart';

class Discussion extends StatefulWidget {


  @override
  _DiscussionState createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text('Discuss Screen ',
            style: TextStyle(fontSize: 40)),
      ),
    );
  }
}