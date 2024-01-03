import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style.dart';
import 'similer_book_listview.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like :', style: AppStyle.s14),
        SizedBox(
          height: 20,
        ),
        SimilerBooksListview(),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
