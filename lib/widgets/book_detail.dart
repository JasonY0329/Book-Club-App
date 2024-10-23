import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key, required this.imageUrl, required this.title, required this.author, required this.description});
  final String imageUrl;
  final String title;
  final String author;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(imageUrl, height: 300,  fit: BoxFit.cover),
          SizedBox(height:10),
          Text(title, overflow: TextOverflow.ellipsis,maxLines: 2,
          style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height:10),
          Text(author, overflow: TextOverflow.ellipsis,maxLines: 2,
          style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height:10),
          Text(description,
          style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
