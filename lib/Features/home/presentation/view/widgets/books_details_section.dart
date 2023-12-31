import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .23),
          child: const CustomBookImage(
            imageUrl:
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fbook&psig=AOvVaw0v772ySWtzcXwV6AjghfrE&ust=1704641113082000&source=images&cd=vfe&ved=0CBIQjRxqFwoTCLCapJGJyYMDFQAAAAAdAAAAABAE',
          ),
        ),
        const SizedBox(
          height: 42,
        ),
        const Text(
          'The Jungle Book',
          style: AppStyle.s32,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: AppStyle.s18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const RatingBook(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 20),
        const BooksAction(),
      ],
    );
  }
}
