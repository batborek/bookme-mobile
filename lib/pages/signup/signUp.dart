import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import './enterCode.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String myText = '+40';
  void changeCountryCode(newCountryCode) {
    setState(() {
      myText = '+' + newCountryCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 40),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 1,
              ),
            ),
            Text('Please enter your phone number'),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 1,
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: FlatButton(
                        child: Row(
                          children: [
                            Icon(Icons.expand_more),
                            Text(
                              myText,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        color: Colors.white,
                        onPressed: () {
                          showCountryPicker(
                            context: context,
                            showPhoneCode: true,
                            onSelect: (Country country) {
                              changeCountryCode(country.phoneCode);
                            },
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (val) {
                          if (val.length == 9) {
                            //10 is the length of the phone number you're allowing
                            FocusScope.of(context).requestFocus(FocusNode());
                          }
                        },
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3.0),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
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
                            hintText: "0-00-0000-00",
                            hintStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 1,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => EnterCode()));
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Next',
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
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
