import 'package:chap03_flutter_onboarding/firstscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('화이팅'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              prefs.clear();
            },
            icon: Icon(Icons.delete),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('assets/dog.jpg'),
            ),
            Text(
              '💖모두 마지막까지 화이팅!!💖',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => FirstScreen()),
                  (route) => false,
                );
              },
              child: Text('Go to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
