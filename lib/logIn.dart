import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bookme/mainPage.dart';
import 'package:bookme/signUp.dart';
import 'package:bookme/pages/rooms/rooms.dart';

class LogIn extends StatefulWidget {
  LogIn({Key key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      key: _scaffoldKey,
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
      // body: Builder(builder: (BuildContext context) {
      //   return Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       withEmailPassword(),
      //     ],
      //   );
      // }),
    );
  }

  Widget withEmailPassword() {
    return Form(
        key: _formKey,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: const Text(
                    'Sign in with email and password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value.isEmpty) return 'Please enter some text';
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: (value) {
                    if (value.isEmpty) return 'Please enter some text';
                    return null;
                  },
                  obscureText: true,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 16.0),
                  alignment: Alignment.center,
                  child: OutlineButton(
                    child: Text("Sign In"),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        _signInWithEmailAndPassword();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signInWithEmailAndPassword() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      ))
          .user;
      if (!user.emailVerified) {
        await user.sendEmailVerification();
      }
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return MainPage(
          user: user,
        );
      }));
    } catch (e) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("Failed to sign in with Email & Password"),
      ));
    }
  }

  void _signOut() async {
    await _auth.signOut();
  }
}
