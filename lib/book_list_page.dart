import 'package:flutter/material.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    int? elementNumber = ModalRoute.of(context)!.settings.arguments as int?;
    print('TEST $elementNumber');
    List allBooks = List.generate(
      elementNumber!,
      (index) => Book(
        index + 1,
        'name: ${index + 1}',
        'writer: ${index + 1}',
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book List'),
      ),
      body: ListView.builder(
        itemCount: allBooks.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              var selectedBook = allBooks[index];
              Navigator.pushNamed(
                context,
                '/detail-book-page',
                arguments: selectedBook,
              );
            },
            leading: CircleAvatar(
              child: Text(
                allBooks[index].id.toString(),
              ),
            ),
            title: Text(
              allBooks[index].name,
            ),
            subtitle: Text(
              allBooks[index].writer,
            ),
          );
        },
      ),
    );
  }
}

class Book {
  int id = 0;
  String name = '';
  String writer = '';

  Book(this.id, this.name, this.writer);
}
