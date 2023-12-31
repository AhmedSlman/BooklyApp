import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/Splash/presentation/view/widgets/sliding_text.dart';
import 'package:my_bookly/Features/home/presentation/view/home_view.dart';
import 'package:my_bookly/core/utils/app_assets.dart';
import 'package:my_bookly/core/utils/app_router.dart';
import 'package:my_bookly/core/utils/constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.logo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(RouterNames.HomeView);
    });
  }
}
