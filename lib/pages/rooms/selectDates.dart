import 'package:flutter/material.dart';

class SelectDates extends StatefulWidget {
  @override
  _SelectDatesState createState() => _SelectDatesState();
}

class _SelectDatesState extends State<SelectDates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        title: Text(
          'Select dates of the stay',
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Color(0xffF5F7FA),
        shadowColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              height: 150,
              width: 270,
              child: Image.asset(
                'assets/img/single.png',
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 1,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Start date',
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              height: 60,
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 1,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Start date',
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              height: 60,
            ),
            Expanded(
              child: SizedBox(
                height: 1,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Continue',
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
            Expanded(
              flex: 3,
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
