import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilerBooksListview extends StatelessWidget {
  const SimilerBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookImage(
              imageUrl:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fbook&psig=AOvVaw0v772ySWtzcXwV6AjghfrE&ust=1704641113082000&source=images&cd=vfe&ved=0CBIQjRxqFwoTCLCapJGJyYMDFQAAAAAdAAAAABAE',
            ),
          );
        },
      ),
    );
  }
}
