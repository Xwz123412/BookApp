import 'package:blocpattern/cubit/book_cubit.dart';
import 'package:blocpattern/views/booklist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedSort; // To track the selected sort option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade50,
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedSort == 'author'
                        ? Colors.grey.shade300
                        : Colors.white, // Darker color if selected
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedSort = 'author';
                    });
                    context.read<BookCubit>().sortByAuthor();
                  },
                  child: Text('Author'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedSort == 'title'
                        ? Colors.grey.shade300
                        : Colors.white // Darker color if selected
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedSort = 'title';
                    });
                    context.read<BookCubit>().sortByTitle();
                  },
                  child: Text('Title'),
                ),
              ],
            ),
          ),

          // Add "Books" title before the book list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Books',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400, // Slimmer font weight
              ),
            ),
          ),

          // Horizontal scrolling book list
          Expanded(
            child: BookList(), // The horizontal scrolling book list
          ),
        ],
      ),
    );
  }
}

