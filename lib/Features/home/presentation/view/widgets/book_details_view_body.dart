import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'custom_book_details_appBar.dart';
import 'similer_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(
                  height: 10,
                ),
                BookDetailsSection(),
                SizedBox(height: 20),
                SimilerBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
