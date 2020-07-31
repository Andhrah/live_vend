import 'package:flutter/material.dart';
import 'package:live_vend/pages/loginPasswordPage.dart';
import 'package:live_vend/pages/signUp.dart';
import 'package:live_vend/pages/signUpCompanyName.dart';
import 'package:live_vend/pages/signUpEmailPage.dart';
import 'package:live_vend/pages/signUpPassword.dart';
import 'package:live_vend/pages/signUpPhonePage.dart';
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
        '/signUp': (BuildContext context) => SignUp(),
        '/signUpEmailPage': (BuildContext context) => SignUpEmailPage(),
        '/signUpPhonePage': (BuildContext context) => SignUpPhonePage(),
        '/signUpCompanyNamePage': (BuildContext context) => SignUpCompanyNamePage(),
        '/signUpPasswordPage': (BuildContext context) => SignUpPasswordPage(),
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
