import 'package:flutter/material.dart';

import 'app/utilities/colors.dart';
import 'app/utilities/text_styles.dart';
import 'app/widgets/build_input_textfield_poin.dart';
import 'app/widgets/build_modal_sheet_confirmation.dart';
import 'app/widgets/build_price_poin_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estimator',
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold();
  }
}
