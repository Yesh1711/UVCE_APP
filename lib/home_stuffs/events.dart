import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              color: Colors.red,
              elevation: 10.0,
              child: SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(child: Text('October Coding Championship!!'),)
                  ],
                ),
              ),
            ),
          ],
        ),
        Card(
          color: Colors.deepOrange,
          elevation: 10.0,
          child: SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(child: Center(child: Text('Web dev Hackathon')),)
              ],
            ),
          ),
        ),
        Card(
          color: Colors.deepOrange,
          elevation: 10.0,
          child: SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(child: Center(child: Text('Web dev Hackathon')),)
              ],
            ),
          ),
        ),
        Card(
          color: Colors.deepOrange,
          elevation: 10.0,
          child: SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(child: Center(child: Text('Build The App Using Futter Challenge')),)
              ],
            ),
          ),
        )
      ],
    );
  }
}
