import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'main.dart';
import 'secondscreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '현재의 나',
          style: TextStyle(color: Colors.orangeAccent),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('assets/IMG_4724.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              '현재의 나',
              style: TextStyle(color: Colors.blue, fontSize: 35),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              '안녕하세요. \n 저는 낙엽입니다.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                prefs.setBool('isOnboarded', true);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                'skip',
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text(
                'Next Page',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
