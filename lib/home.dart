import 'package:flutter/material.dart';
import 'package:sebha/help.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void increment() {
    counter++;
  }

  void zero() {
    counter = 0;
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 10, color: Colors.black.withOpacity(0.5))
                  ]),
              child: Text(
                '$counter',
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      increment();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black, elevation: 0),
                  child: Text('تسبيح')),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    zero();
                  });
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.black,
                    fixedSize: Size(100, 60)),
                child: Text('صفر')),
          ],
        ),
      ),
    );
  }
}
