import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.imageUrl, required this.title});
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width:120,
   

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(imageUrl, height: 150, width: 100),
          Text(title, overflow: TextOverflow.ellipsis,maxLines: 2,),
        ],
      ),
    );
  }
}
