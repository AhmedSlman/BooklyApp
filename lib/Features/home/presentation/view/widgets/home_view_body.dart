import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/app_assets.dart';
import 'package:my_bookly/core/utils/app_style.dart';
import 'package:my_bookly/core/utils/constants.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturesBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: AppStyle.s20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  )),
            ),
          )
        ],
      ),
    );
  }
}
