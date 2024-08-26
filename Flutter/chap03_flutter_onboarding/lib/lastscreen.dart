import 'package:chap03_flutter_onboarding/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            '10년 후의 나',
            style: TextStyle(color: Colors.orangeAccent),
          ),
          centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('assets/IMG_4726.jpeg'),
            ),
            SizedBox(height: 10),
            Text(
              '10년 후의 나',
              style: TextStyle(color: Colors.blue, fontSize: 35),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              '므찐 30대 후반이 되어 있겠죠~~~?',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                'Go Home',
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
