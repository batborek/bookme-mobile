import 'package:flutter/material.dart';
import 'rooms.dart';

class ReservedSuccess extends StatefulWidget {
  @override
  _ReservedSuccessState createState() => _ReservedSuccessState();
}

class _ReservedSuccessState extends State<ReservedSuccess> {
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
              'Congrats! \nYou have succesfully \nreserved your room',
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
              'assets/img/hf.png',
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
                    .push(MaterialPageRoute(builder: (context) => Rooms()));
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
