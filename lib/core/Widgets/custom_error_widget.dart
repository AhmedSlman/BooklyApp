import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/app_style.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: AppStyle.s18,
    );
  }
}
