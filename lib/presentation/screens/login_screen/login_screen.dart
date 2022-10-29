import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';
import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Body(),
    );
  }
}
