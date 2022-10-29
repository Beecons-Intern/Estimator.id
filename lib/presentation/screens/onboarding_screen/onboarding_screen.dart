import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';
import 'components/body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primary,
      body: Body()
    );
  }
}
