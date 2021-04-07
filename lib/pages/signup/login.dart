import 'package:flutter/material.dart';
import '../rooms/rooms.dart';
import 'package:bookme/signUp.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xffF5F7FA),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 50, right: 50, top: 100, bottom: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 1,
                ),
              ),
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Rooms()));
                },
                child: Container(
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Color(0xff777777)),
                  ),
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
