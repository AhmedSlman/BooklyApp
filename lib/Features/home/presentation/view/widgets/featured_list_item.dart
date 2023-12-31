import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class FeaturesListViewItem extends StatelessWidget {
  const FeaturesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.redAccent,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppAssets.testImage),
            )),
      ),
    );
  }
}
