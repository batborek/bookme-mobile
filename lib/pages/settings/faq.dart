import 'dart:ui';

import 'package:bookme/pages/rooms/rooms.dart';
import 'package:bookme/pages/settings/question.dart';
import 'package:bookme/pages/settings/settings.dart';
import 'package:bookme/pages/trips/trips.dart';
import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
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
          'FAQ',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Settings()));
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
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 1,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Question()));
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
                    Icon(Icons.question_answer),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Question title',
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
                    .push(MaterialPageRoute(builder: (context) => Question()));
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
                    Icon(Icons.question_answer),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Question title',
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
                    .push(MaterialPageRoute(builder: (context) => Question()));
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
                    Icon(Icons.question_answer),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Question title',
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
                    .push(MaterialPageRoute(builder: (context) => Question()));
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
                    Icon(Icons.question_answer),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Question title',
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
                    .push(MaterialPageRoute(builder: (context) => Question()));
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
                    Icon(Icons.question_answer),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Question title',
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
                    .push(MaterialPageRoute(builder: (context) => Question()));
              },
              child: Expanded(
                  child: SizedBox(
                height: 1,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
