import 'package:bookme/pages/settings/settings.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        title: Text(
          'Contact us',
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
        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 1,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Our phone numbers',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    height: 100,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          '(+40)12345678\n\n(+45)1234567',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                      ],
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
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Email adress',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    height: 60,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'hi@batborek.com',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 1,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Location',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    height: 60,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          '3517 W. Gray St. Utica, \nPennsylvania 57867',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                      ],
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
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'In app messaging',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    height: 60,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Chat with us',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
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
