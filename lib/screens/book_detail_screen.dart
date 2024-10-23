import 'package:flutter/material.dart';

import '../models/book.dart';
import '../widgets/book_detail.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Detail'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(child: BookDetail(
        imageUrl: book.imageUrl,
        title: book.title,
        author: book.author,
        description: book.description,
      ))
    );
  }
}
