import 'package:bookme/mainPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bookme/pages/rooms/rooms.dart';
import 'package:bookme/logIn.dart';
import 'package:bookme/pages/settings/settings.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _displayName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isSuccess;
  String _userEmail;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      body: Center(
        child: Form(
            key: _formKey,
            child: Card(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 50, right: 50, top: 100, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/img/logo.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    TextFormField(
                      controller: _displayName,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                          alignLabelWithHint: true,
                          hintText: "Enter your name"),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _emailController,
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
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _passwordController,
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
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      alignment: Alignment.center,
                      child: OutlineButton(
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            _registerAccount();
                          }
                        },
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
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  void _registerAccount() async {
    final User user = (await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;

    if (user != null) {
      if (!user.emailVerified) {
        await user.sendEmailVerification();
      }
      await user.updateProfile(displayName: _displayName.text);
      final user1 = _auth.currentUser;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Settings(
                user: user1,
              )));
    } else {
      _isSuccess = false;
    }
  }
}
