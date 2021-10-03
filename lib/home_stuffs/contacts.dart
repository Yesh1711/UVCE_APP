import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child:ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(child: Center(
                          child: Text('Todays Work',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                    ),
    ]
                  ),
                ),
              ],
            ),
            Card(
              color: Colors.yellow,
              elevation: 10.0,
              child: SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(child: Center(child: Text('Pratice Quiz')),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.yellow,
              elevation: 10.0,
              child: SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(child: Center(child: Text('Practice Java')),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.yellow,
              elevation: 10.0,
              child: SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(child: Center(child: Text('Complete Assignment')),)
                  ],
                ),
              ),
            )
          ],
        ),
        );
  }
}
