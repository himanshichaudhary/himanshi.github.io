import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configs/app_dimensions.dart';
import '../configs/app_typography.dart';
import '../provider/app_provider.dart';


class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Text(
      text,
      style: AppText.h1b!.copyWith(
        fontSize: AppDimensions.normalize(20),
        height: 1,
        color: appProvider.isDark ? Colors.white : Colors.white,
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppText.l1!.copyWith(
        fontFamily: 'Montserrat',
      ),
    );
  }
}
