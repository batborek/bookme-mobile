import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/signup/login.dart';
import 'pages/rooms/reservedSuccess.dart';
import 'pages/trips/changeSuccess.dart';
import 'pages/settings/payment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
