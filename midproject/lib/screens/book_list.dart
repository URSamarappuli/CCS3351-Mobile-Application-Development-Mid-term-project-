import 'package:flutter/material.dart';
import 'package:midproject/widgets/book.dart';

///BookList Widget
///
///Uses the [Book] Widget to display a list of books.

class BoookList extends StatelessWidget {
  const BoookList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ceylon Bookstore"),
          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(
          child: ListView(children: [
            Book(
                coverImagePath: "assets/images/rich-dad-poor-dad.jpg",
                title: "Rich Dad Poor Dad",
                author: "Robert Kiyosaki",
                price: 1250),
            Book(
                coverImagePath: "assets/images/Harry-Potter.jpg",
                title: "\t\t\tHarry Potter and \nThe Deathly Hallows",
                author: "J.K. Rowling",
                price: 1000),
            Book(
                coverImagePath: "assets/images/Bel-Canto.jpg",
                title: "Bel Canto",
                author: "Ann Patchett",
                price: 1500),
          ]),
        ),
      ),
    );
  }
}
