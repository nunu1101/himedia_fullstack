import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lastscreen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            '수료 후의 나',
            style: TextStyle(color: Colors.orangeAccent),
          ),
          centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('assets/IMG_4725.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              '수료 후의 나',
              style: TextStyle(color: Colors.blue, fontSize: 35),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              '므찐 \n큰 나무가 \n되겠습니다~',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LastScreen()),
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
