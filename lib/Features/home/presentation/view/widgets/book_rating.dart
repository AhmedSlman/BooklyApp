import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/core/utils/app_style.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 18,
        ),
        const Padding(
          padding: EdgeInsets.all(6.0),
          child: Text(
            '4.8',
            style: AppStyle.s18,
          ),
        ),
        Text(
          "(2245)",
          style: AppStyle.s14.copyWith(
            fontSize: 12,
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
