import 'package:flutter/material.dart';
import 'reservedSuccess.dart';

class YourSelection extends StatefulWidget {
  @override
  _YourSelectionState createState() => _YourSelectionState();
}

class _YourSelectionState extends State<YourSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        title: Text(
          'Your Selection',
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
            Expanded(
              child: SizedBox(
                height: 1,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
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
              height: 300,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/fv.png',
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Single room'),
                          Expanded(
                              child: SizedBox(
                            height: 1,
                          )),
                          Text('99 RON'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 1,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text('Payment Method'),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.credit_card_outlined,
                    color: Colors.black54,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 1,
                    ),
                  ),
                  Text(
                    'Card ending with 1234',
                    style: TextStyle(fontSize: 17),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 1,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black54,
                  ),
                ],
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
              height: 80,
            ),
            Expanded(
              child: SizedBox(
                height: 1,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total Fee',
                    style: TextStyle(fontSize: 17),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 1,
                    ),
                  ),
                  Text(
                    '99 RON',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              width: double.infinity,
            ),
            Expanded(
              child: SizedBox(
                height: 1,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ReservedSuccess()));
              },
              child: Container(
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
