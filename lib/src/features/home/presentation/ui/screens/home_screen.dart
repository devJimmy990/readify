import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:readify/src/common/common.dart';
import 'package:readify/src/features/features.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      smallScreen: HomeScreenSmall(),
      largeScreen: HomeScreenLarge(),
    );
  }
}
