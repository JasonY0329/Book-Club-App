import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/book_cubit.dart';
import 'screens/book_list_screen.dart';

void main() {
  runApp(BookCubitApp());
}

class BookCubitApp extends StatelessWidget {
  const BookCubitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookCubit()..loadBooks(),
      child: MaterialApp(
        home: BookListScreen(),
      ),
    );
  }
}
