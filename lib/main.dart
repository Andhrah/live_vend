import 'package:flutter/material.dart';
import 'package:live_vend/pages/loginPasswordPage.dart';
import './pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Vend',
      initialRoute: '/',
      routes: {
        '/loginPassword': (BuildContext context) => LoginPasswordPage(),
      },
      theme: ThemeData(
        fontFamily: 'CircularStd',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}
