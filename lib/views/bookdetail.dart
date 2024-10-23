import 'package:blocpattern/model/book.dart';
import 'package:flutter/material.dart';

        
     

class BookDetail extends StatelessWidget {
  final Book book;

  const BookDetail({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade50,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Book Detail',
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
      body: SingleChildScrollView( // Make the content scrollable
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  book.imageUrl,
                  height: 250,
                ),
              ),
              SizedBox(height: 16),
              Text(
                book.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'By ${book.author}',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Text(
                book.description,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

