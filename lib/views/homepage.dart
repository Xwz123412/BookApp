import 'package:blocpattern/cubit/book_cubit.dart';
import 'package:blocpattern/views/booklist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Action for menu icon
          },
        ),
        title: Text(
          'Book Club Home',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true, // Center the title
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Action for profile icon
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row for "Sort by" with author and title buttons
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'Sort by:',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    context.read<BookCubit>().sortByAuthor();
                  },
                  child: Text('Author'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    context.read<BookCubit>().sortByTitle();
                  },
                  child: Text('Title'),
                ),
              ],
            ),
          ),
          Expanded(
            child: BookList(), // The horizontal scrolling book list
          ),
        ],
      ),
    );
  }
}
