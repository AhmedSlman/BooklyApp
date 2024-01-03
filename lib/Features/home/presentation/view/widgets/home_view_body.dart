import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/app_assets.dart';
import 'package:my_bookly/core/utils/app_style.dart';
import 'package:my_bookly/core/constants/constants.dart';
import 'best_seller_item.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: CustomAppBar(),
              ),
              FeaturesBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Best Seller',
                  style: AppStyle.s20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
