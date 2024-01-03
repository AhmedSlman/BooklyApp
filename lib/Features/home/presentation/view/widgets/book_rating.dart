import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/core/utils/app_style.dart';

class RatingBook extends StatelessWidget {
  const RatingBook(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 16,
        ),
        const Padding(
          padding: EdgeInsets.all(6.0),
          child: Text(
            '4.8',
            style: AppStyle.s18,
          ),
        ),
        Opacity(
          opacity: .5,
          child: Text(
            "(2245)",
            style: AppStyle.s14.copyWith(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
