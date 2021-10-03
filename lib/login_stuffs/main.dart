import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:io';
import 'package:project/login_stuffs/mainpage.dart';
import 'package:project/login_stuffs/login.dart';
import 'package:project/login_stuffs/register.dart';
import 'package:project/started/firstpage.dart';
import 'package:project/started/onboarding_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? FirebaseOptions(
      appId: '***************',
      apiKey: '***************',
      projectId: 'taxi-***************',
      messagingSenderId: '***************',
      databaseURL: 'https://vlearn-f94f7-default-rtdb.firebaseio.com',
    )
        : FirebaseOptions(
      appId: '1:761603107333:android:2ae7c5e3af89637e140a6c',
      apiKey: 'AIzaSyA3HNH_SjDD84EoW62OcGEiqrh1tQYvsGY',
      messagingSenderId: '*****************',
      projectId: 'vlearn-f94f7',
      databaseURL: 'https://vlearn-f94f7-default-rtdb.firebaseio.com',
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Brand-Regular',
        primarySwatch: Colors.blue,
      ),
      initialRoute: FirstPage.id ,
      routes: {
        register.id: (context) => register(),
        login.id:(context)=> login(),
        Mainpage.id:(context)=> Mainpage(),
        FirstPage.id:(context)=> FirstPage(),
        OnBoardingPage.id:(context)=> OnBoardingPage()
      },
    );
  }
}