import 'package:basic_navigation/book_list_page.dart';
import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  final Book selectedBook;
  const BookDetailPage({
    required this.selectedBook,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Detail Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(selectedBook.id.toString()),
            Text(selectedBook.name),
            Text(selectedBook.writer),
          ],
        ),
      ),
    );
  }
}
