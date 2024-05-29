import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feedlist extends StatefulWidget {
  const Feedlist({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  State<Feedlist> createState() => _FeedlistState();
}

class _FeedlistState extends State<Feedlist> {
  // 좋아요 여부
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 이미지
        Image.network(widget.imageUrl,
            height: 400, width: double.infinity, fit: BoxFit.cover),
        // 아이콘 목록
        Row(
          children: [
            IconButton(
              icon: Icon(
                CupertinoIcons.heart_fill,
                color: isFavorite ? Colors.redAccent : Colors.blueGrey,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.chat_bubble,
                color: Colors.blueGrey,
              ),
              onPressed: () {},
            ),
            Spacer(), // 빈 공간 추가
            IconButton(
              icon: Icon(
                CupertinoIcons.bookmark,
                color: Colors.blueGrey,
              ),
              onPressed: () {},
            )
          ],
        ),
        // 좋아요
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "15 likes",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
          ),
        ),

        // 피드 글 작성
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("kawai cat💕  \n#CatLife #CuteCat"),
        ),
        // 날짜
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "May 29",
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
      ],
    );
  }
}
