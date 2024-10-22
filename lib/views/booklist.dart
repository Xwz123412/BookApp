import 'package:blocpattern/cubit/book_cubit.dart';
import 'package:blocpattern/model/book.dart';
import 'package:blocpattern/views/bookdetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, List<Book>>(
      builder: (context, books) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Enable horizontal scrolling
          child: Row(
            children: books.map((book) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetail(book: book),
                    ),
                  );
                },
                child: Container(
                  width: 120, // Adjust width based on your design
                  margin: EdgeInsets.symmetric(horizontal: 2.0), // Spacing between books
                  child: Column(
                    children: [
                      Image.asset(book.imageUrl, width: 800, height: 180), // Book image
                      SizedBox(height: 8),
                      Text(
                        book.title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 4),
                      Text(
                        book.author,
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
