import 'package:bookme/mainPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bookme/pages/rooms/rooms.dart';
import 'package:bookme/logIn.dart';

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
                    TextFormField(
                      controller: _displayName,
                      decoration: const InputDecoration(labelText: 'Full Name'),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(labelText: 'Password'),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      alignment: Alignment.center,
                      child: OutlineButton(
                        child: Text("register"),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            _registerAccount();
                          }
                        },
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
          builder: (context) => MainPage(
                user: user1,
              )));
    } else {
      _isSuccess = false;
    }
  }
}
