import 'dart:ui';

import 'package:bookme/pages/rooms/rooms.dart';
import 'package:bookme/pages/settings/confirmLogout.dart';
import 'package:bookme/pages/settings/contact.dart';
import 'package:bookme/pages/settings/faq.dart';
import 'package:bookme/pages/settings/hotelRules.dart';
import 'package:bookme/pages/settings/payment.dart';
import 'package:bookme/pages/settings/personalinfo.dart';
import 'package:bookme/pages/settings/privacy.dart';
import 'package:bookme/pages/trips/trips.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Rooms()));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home_outlined),
                      SizedBox(height: 5),
                      Text('Home'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Trips()));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Trips',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings_outlined, color: Colors.blue),
                    SizedBox(height: 5),
                    Text(
                      'Settings',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
        ),
        height: 70,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 50,
          bottom: 10,
          left: 20,
          right: 20,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 310,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(left: 30, right: 20),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 1,
                      ),
                    ),
                    Text(
                      'Jane Cooper',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 1,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Personalinfo()));
              },
              child: Container(
                width: 310,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.person),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Personal information',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: 10,
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
              height: 1,
            )),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Rules()));
              },
              child: Container(
                width: 310,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.rule),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Hotel rules',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: 10,
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
              height: 1,
            )),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Faq()));
              },
              child: Container(
                width: 310,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.question_answer),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'FAQ',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: 10,
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
              height: 1,
            )),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PaymentMethods()));
              },
              child: Container(
                width: 310,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.credit_card),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Payment Methods',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: 10,
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
              height: 1,
            )),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Privacy()));
              },
              child: Container(
                width: 310,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.privacy_tip),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Privacy',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: 10,
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
              height: 1,
            )),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Contact()));
              },
              child: Container(
                width: 310,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.call),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Contact us',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: 10,
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
              height: 1,
            )),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ConfirmLogout()));
              },
              child: Container(
                width: 310,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffF47090),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.logout, color: Colors.white),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: 10,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
