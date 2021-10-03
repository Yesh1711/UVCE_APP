
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp( MaterialApp(
      home: LeaderBoard()));
}

class LeaderBoard extends StatefulWidget {

  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child:
      ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 100,
                child: Row(
                    children: [
                      Expanded(child: Center(
                        child: Text('LEADERBOARD',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      ),
                    ]
                ),
              ),
            ],
          ),
          Card(
            color: Colors.white54,
            elevation: 10.0,
            child: SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      '1.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text('YESH',
                    style: TextStyle(
                      fontSize: 15,
                    ),)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                    child: Text('3220',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white54,
            elevation: 10.0,
            child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      '2.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text('SURAJ',
                    style: TextStyle(
                      fontSize: 15,
                    ),)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                    child: Text('3156',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white54,
            elevation: 10.0,
            child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      '3.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text('VINAYAKA',
                    style: TextStyle(
                      fontSize: 15,
                    ),)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                    child: Text('2990',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white54,
            elevation: 10.0,
            child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      '4.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text('YESHAS',
                    style: TextStyle(
                      fontSize: 15,
                    ),)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                    child: Text('2980',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 10.0,
            child: Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.purple, Colors.blue])
              ),
              child: SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(child: Center(
                      child: Text('2660',
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
}