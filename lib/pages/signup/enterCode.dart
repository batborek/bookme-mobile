import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import '../rooms/rooms.dart';

class EnterCode extends StatefulWidget {
  @override
  _EnterCodeState createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
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
            Text(
              'Please enter 4-digit code\nreceived via SMS',
              textAlign: TextAlign.center,
            ),
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
              child: TextField(
                onChanged: (val) {
                  if (val.length == 4) {
                    //10 is the length of the phone number you're allowing
                    FocusScope.of(context).requestFocus(FocusNode());
                  }
                },
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.0),
                keyboardType: TextInputType.number,
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
                    hintText: "0-0-0-0",
                    hintStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                    .push(MaterialPageRoute(builder: (context) => Rooms()));
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Confirm',
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
