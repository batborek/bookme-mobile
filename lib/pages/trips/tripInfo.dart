import 'dart:ui';

import 'package:bookme/pages/rooms/rooms.dart';
import 'package:bookme/pages/settings/settings.dart';
import 'package:bookme/pages/trips/confirmCancel.dart';
import 'package:bookme/pages/trips/selectNewDate.dart';
import 'package:bookme/pages/trips/trips.dart';
import 'package:flutter/material.dart';

class TripInfo extends StatefulWidget {
  @override
  _TripInfoState createState() => _TripInfoState();
}

class _TripInfoState extends State<TripInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Information about your \nupcoming trip',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Trips()));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xffF5F7FA),
        shadowColor: Colors.transparent,
      ),
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
          bottom: 1,
          left: 50,
          right: 50,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 1,
            ),
            Expanded(
              flex: 3,
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
                height: 130,
                child: Image.asset(
                  'assets/img/wfh.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 1,
              ),
            ),
            Container(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 200,
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.only(right: 30, left: 30),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: 1,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(fontSize: 20),
                          ),
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: 1,
                            ),
                          ),
                          Text(
                            '20-22 Feb',
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 1,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Total paid',
                            style: TextStyle(fontSize: 20),
                          ),
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: 1,
                            ),
                          ),
                          Text(
                            '99 RON',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 3,
                        child: SizedBox(
                          height: 1,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SelectNewDates()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Change dates',
                            style: TextStyle(color: Colors.white, fontSize: 15),
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
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: double.infinity,
                          height: 40,
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ConfirmCancel()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Cancel reservation',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 15,
                                color: Colors.black12,
                                spreadRadius: 1,
                              ),
                            ],
                            color: Color(0xffF47090),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: double.infinity,
                          height: 40,
                        ),
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
