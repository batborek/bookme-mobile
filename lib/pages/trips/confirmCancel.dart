import 'package:bookme/pages/trips/cancelledSuccess.dart';
import 'package:bookme/pages/trips/tripInfo.dart';
import 'package:flutter/material.dart';

class ConfirmCancel extends StatefulWidget {
  @override
  _ConfirmCancelState createState() => _ConfirmCancelState();
}

class _ConfirmCancelState extends State<ConfirmCancel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      body: Container(
        padding: EdgeInsets.only(top: 70, bottom: 50, left: 50, right: 50),
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                height: 1,
              ),
            ),
            Text(
              'We are sorry to see\nyou cancelling\nyour reservation',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            Expanded(
              flex: 4,
              child: SizedBox(
                height: 1,
              ),
            ),
            Text(
              'Are you sure?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 1,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TripInfo()));
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Keep it',
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
              flex: 1,
              child: SizedBox(
                height: 1,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CancelledSuccess()));
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Confirm cancel',
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
                  color: Color(0xffF47090),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                height: 60,
              ),
            ),
            Expanded(
              flex: 5,
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
