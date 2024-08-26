import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          backgroundColor: Colors.black54,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                          child: Text('컨테이너'),
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.only(bottom: 5),
                        ),
                        Text(
                          'hello',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.indigo,
                      size: 100,
                    )
                  ],
                ),
                Image.asset('assets/images/cat.jpg'),
                Image.network(
                    'https://gratisography.com/wp-content/uploads/2023/10/gratisography-cool-cat-800x525.jpg'),
                Image.network(
                    'https://gratisography.com/wp-content/uploads/2023/05/gratisography-colorful-cat-free-stock-photo-800x525.jpg'),
                TextField(
                  decoration: InputDecoration(labelText: 'Input'),

                  // 입력폼(text)에 값이 변경될 경우 작동한다
                  onChanged: (text) {
                    // print(text);
                  },
                  // 엔터 눌렀을 경우 작동한다.
                  onSubmitted: (text) {
                    print("엔터 누름 : $text");
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
