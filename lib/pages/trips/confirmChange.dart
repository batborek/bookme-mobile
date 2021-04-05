import 'package:bookme/pages/trips/changeSuccess.dart';
import 'package:bookme/pages/trips/tripInfo.dart';
import 'package:flutter/material.dart';

class ConfirmChange extends StatefulWidget {
  @override
  _ConfirmChangeState createState() => _ConfirmChangeState();
}

class _ConfirmChangeState extends State<ConfirmChange> {
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
              'Are you sure to\nchange the dates\nof your stay?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            Expanded(
              flex: 5,
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ChangeSuccess()));
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Yes',
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
                  color: Color(0xff37D39B),
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
