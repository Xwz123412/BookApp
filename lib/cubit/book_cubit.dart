
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blocpattern/model/book.dart';

class BookCubit extends Cubit<List<Book>> {
  BookCubit() : super([]);

  // Initialize with a set of books
  void init() {
    List<Book> books = [
      
      // Book(
      //   title: '2012',
      //   author: 'Roland Emmerich',
      //   description: 'On Earth, billions of inhabitants are unaware that the planet has an expiration date. With the warnings of an American scientist (Chiwetel Ejiofor), world leaders begin secret preparations for the survival of select members of society. When the global cataclysm finally occurs, failed writer Jackson Curtis (John Cusack) tries to lead his family to safety as the world starts falling apart.',
      //   imageUrl: 'lib/assets/2012.jpg',
      // ),
      Book(
        title: 'Don\'t look back',
        author: 'Isaac Nelson',
        description: 'In 1965, the iconic troubadour Bob Dylan '+
        'toured the United Kingdom at the age of 23, and director D.A. Pennebaker was allowed behind the scenes to provide one of the most intimate glimpses of the private and frequently cantankerous songwriter. The film chronicles Dylan\'s concert appearances, hotel room conversations, and transportation downtime, pulling back the curtain on the folk messiah at the end of his relationship with Joan Baez and on the cusp of his creative shift toward rock music.'+
        'This book reconsiders the career of an important, controversial, but neglected figure in this history of Irish Presbyterianism. The Revd Isaac Nelson is mostly remembered for his opposition to the evangelical revival of 1859, but this book demonstrates that there was much more to Nelson’s career. ',
        imageUrl: 'lib/assets/Dont look back.jpg',
      ),
      Book(
        title: 'A million to one',
        author: 'Tony Faggioli',
        description: 'On Earth, billions of i',
        imageUrl: 'lib/assets/A million to one.jpg',
      ),
      Book(
        title: 'Alone',
        author: 'Morgan Maxwell',
        description: 'A true story...',
        imageUrl: 'lib/assets/Alone.jpg',
      ),
      Book(
        title: 'Soul',
        author: 'Olivia Wilson',
        description: '...',
        imageUrl: 'lib/assets/Soul.jpg',
      ),
      Book(
        title: 'The crying book',
        author: 'Heather Christle',
        description: '...',
        imageUrl: 'lib/assets/The crying book.jpg',
      ),
      Book(
        title: 'Walk into the shadow',
        author: 'Tony Faggioli',
        description: '...',
        imageUrl: 'lib/assets/Walk into the shadow.jpg',
      ),
      Book(
        title: 'Harry Potter',
        author: 'J.K. Rowling',
        description: '...',
        imageUrl: 'lib/assets/Harry Potter.jpg',
      ),
    ];
    emit(books); // Emit the book list state
  }

  // Sort the book list by author
  void sortByAuthor() {
    List<Book> sortedBooks = List.from(state);
    sortedBooks.sort((a, b) => a.author.compareTo(b.author));
    emit(sortedBooks);
  }

  // Sort the book list by title
  void sortByTitle() {
    List<Book> sortedBooks = List.from(state);
    sortedBooks.sort((a, b) => a.title.compareTo(b.title));
    emit(sortedBooks);
  }
}
