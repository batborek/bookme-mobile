import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './pages/rooms.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Deo',
      home: Rooms(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xffF5F7FA),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 50, right: 50, top: 100, bottom: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/img/logo.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                alignment: Alignment.center,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      alignLabelWithHint: true,
                      hintText: "Enter your e-mail"),
                ),
                width: double.infinity,
                height: 55,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      prefixIcon: Container(
                        margin: EdgeInsets.only(left: 40),
                        child: Icon(
                          Icons.remove_red_eye_rounded,
                          color: Colors.transparent,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (() => _toggle()),
                        child: Icon(
                          Icons.remove_red_eye_rounded,
                          color: Colors.black45,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      alignLabelWithHint: true,
                      hintText: "Password"),
                ),
                width: double.infinity,
                height: 55,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      color: Colors.black12,
                      spreadRadius: 1,
                    ),
                  ],
                  color: Color(0xff0070BA),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                height: 60,
              ),
              SizedBox(
                height: 35,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Having trouble logging in?',
                    style: TextStyle(color: Color(0xff777777)),
                  ),
                  width: double.infinity,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Sign up',
                  style: TextStyle(color: Color(0xff777777)),
                ),
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
