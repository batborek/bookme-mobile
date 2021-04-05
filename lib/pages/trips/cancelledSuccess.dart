import 'package:bookme/pages/trips/trips.dart';
import 'package:flutter/material.dart';

class CancelledSuccess extends StatefulWidget {
  @override
  _CancelledSuccessState createState() => _CancelledSuccessState();
}

class _CancelledSuccessState extends State<CancelledSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      body: Container(
        padding: EdgeInsets.only(top: 70, bottom: 50, left: 40, right: 40),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              'You reservation\nas been canceled!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 1,
              ),
            ),
            Image.asset(
              'assets/img/single.png',
              fit: BoxFit.cover,
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
                    .push(MaterialPageRoute(builder: (context) => Trips()));
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Back to main menu',
                  style: TextStyle(color: Colors.black54, fontSize: 18),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      color: Colors.black12,
                      spreadRadius: 1,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                height: 60,
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
    );
  }
}
