import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/core/utils/app_router.dart';
import 'package:my_bookly/core/utils/constants.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_style.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterNames.BookDetailsView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.redAccent,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppAssets.testImage),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: AppStyle.s22.copyWith(fontFamily: KGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'J.K. Rowling',
                    style: AppStyle.s14.copyWith(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Row(
                    children: [
                      Text(
                        "19.99 E",
                        style: AppStyle.s18,
                      ),
                      Spacer(),
                      RatingBook(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
