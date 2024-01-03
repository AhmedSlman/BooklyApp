import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:my_bookly/core/utils/app_style.dart';

import '../../../../../core/Widgets/custom_button.dart';
import 'books_action.dart';
import 'books_details_section.dart';
import 'custom_book_details_appBar.dart';
import 'custom_book_item.dart';
import 'similer_book_listview.dart';
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
