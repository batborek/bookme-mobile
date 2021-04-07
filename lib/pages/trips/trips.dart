import 'dart:ui';

import 'package:bookme/pages/settings/settings.dart';
import 'package:flutter/material.dart';
import 'tripsPast.dart';
import 'tripInfo.dart';
import '../rooms/rooms.dart';

class Trips extends StatefulWidget {
  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
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
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.schedule,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Trips',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings_outlined,
                      ),
                      SizedBox(height: 5),
                      Text('Settings'),
                    ],
                  ),
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
          bottom: 20,
          left: 40,
          right: 40,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Trips',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TripInfo()));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        color: Colors.black12,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/fv3.png',
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Family (4 beds)'),
                              Expanded(
                                  child: SizedBox(
                                height: 1,
                              )),
                              Text(
                                '20-22 feb',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 1,
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
                height: 1,
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 1,
                    ),
                  ),
                  Text(
                    '━\nUpcoming',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue),
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
                          MaterialPageRoute(builder: (context) => TripsPast()));
                    },
                    child: Text(
                      '━\nPast',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 1,
                    ),
                  ),
                ],
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
