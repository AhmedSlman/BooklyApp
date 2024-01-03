import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/core/utils/app_router.dart';

import '../../../../../core/utils/app_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28),
      child: Row(
        children: [
          Image.asset(
            AppAssets.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(RouterNames.SearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          )
        ],
      ),
    );
  }
}
