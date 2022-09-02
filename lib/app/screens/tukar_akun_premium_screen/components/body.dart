import 'package:flutter/material.dart';

import 'build_card_radio.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedValue = 0;
  List<Map> data = [
    {"title": "Rp 50.000", "subtitle": "800 Poin", "value": 1},
    {"title": "Rp 100.000", "subtitle": "800 Poin", "value": 2},
    {"title": "Rp 150.000", "subtitle": "800 Poin", "value": 3},
    {"title": "Rp 200.000", "subtitle": "800 Poin", "value": 4},
    {"title": "Rp 250.000", "subtitle": "800 Poin", "value": 5},
    {"title": "Rp 300.000", "subtitle": "800 Poin", "value": 6},
    {"title": "Rp 350.000", "subtitle": "800 Poin", "value": 7}
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ...data
              .map((item) => BuildCardRadio(
                  selectedValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = item["value"];
                    });
                  },
                  title: item["title"],
                  subtitle: item["subtitle"],
                  value: item["value"]))
              .toList(),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
