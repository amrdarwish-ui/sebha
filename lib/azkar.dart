import 'package:flutter/material.dart';

class Azkar extends StatefulWidget {
  Azkar({Key? key}) : super(key: key);

  @override
  State<Azkar> createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  int counter5 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$counter1',
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter1++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      'سبحان الله',
                      style: TextStyle(fontSize: 20),
                    )),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter1 = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: Text('صفر', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$counter2',
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: Text(
                      'الله اكبر',
                      style: TextStyle(fontSize: 20),
                    )),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: Text('صفر', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$counter3',
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: Text(
                      'الحمد لله',
                      style: TextStyle(fontSize: 20),
                    )),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: Text('صفر', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$counter4',
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: Text(
                      'استغفر الله',
                      style: TextStyle(fontSize: 20),
                    )),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: Text('صفر', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$counter5',
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: Text(
                      'لا اله الا الله',
                      style: TextStyle(fontSize: 20),
                    )),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: Text('صفر', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
