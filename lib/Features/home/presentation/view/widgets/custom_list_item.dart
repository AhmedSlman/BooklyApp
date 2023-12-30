import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: AspectRatio(
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
      ),
    );
  }
}
