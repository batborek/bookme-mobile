import 'dart:ui';

import 'package:bookme/pages/rooms/rooms.dart';
import 'package:bookme/pages/settings/faq.dart';
import 'package:bookme/pages/trips/trips.dart';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
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
      appBar: AppBar(
        title: Text(
          'Title of the Question',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Faq()));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xffF5F7FA),
        shadowColor: Colors.transparent,
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
              width: 310,
              height: 420,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Text(
                '\nLorem ipsum',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
              height: 1,
            )),
          ],
        ),
      ),
    );
  }
}
