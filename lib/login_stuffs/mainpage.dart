import 'package:project/login_stuffs/register.dart';
import 'package:project/login_stuffs/login.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class Mainpage extends StatefulWidget {
  static const String id = 'mainpage';

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late Animation animation ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(controller);
    controller.forward();


    @override
    void dispose(){
      super.dispose();
    }
    controller.addListener(() {
      setState(() {

      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                  Text ('V-Learn',
                  style: TextStyle(
                    fontSize: 75.0,
                    fontWeight: FontWeight.w900,
                ),
                  )
                    ]
            ),
            SizedBox(
              height: 48.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, login.id, (route) => false);
              },
              child: Text('Login'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
              ) ,

            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, register.id, (route) => false);
              },
              child: Text('Register'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
              ) ,
            ),
          ],
        ),
    ),
    );
  }
}
