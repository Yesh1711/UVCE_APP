import 'package:flutter/material.dart';
import 'package:project/login_stuffs/login.dart';
import 'package:project/login_stuffs/register.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("welcome"),
      ),
    );
  }
}
