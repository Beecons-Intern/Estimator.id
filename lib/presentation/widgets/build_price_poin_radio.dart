import 'package:flutter/material.dart';

import 'build_card_radio.dart';

class BuildPricePoinRadio extends StatefulWidget {
  const BuildPricePoinRadio({Key? key}) : super(key: key);

  @override
  State<BuildPricePoinRadio> createState() => _BuildPricePoinRadioState();
}

class _BuildPricePoinRadioState extends State<BuildPricePoinRadio> {
  int selectedValue = 0;
  final List<Map> data = [
    {
      "title": "Rp 50.000",
      "subtitle": "800 Poin",
    },
    {
      "title": "Rp 100.000",
      "subtitle": "800 Poin",
    },
    {
      "title": "Rp 150.000",
      "subtitle": "800 Poin",
    },
    {
      "title": "Rp 200.000",
      "subtitle": "800 Poin",
    },
    {
      "title": "Rp 250.000",
      "subtitle": "800 Poin",
    },
    {
      "title": "Rp 300.000",
      "subtitle": "800 Poin",
    },
    {
      "title": "Rp 350.000",
      "subtitle": "800 Poin",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...data
            .map((item) => BuildCardRadio(
                selectedValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = data.indexOf(item);
                  });
                },
                title: item["title"],
                subtitle: item["subtitle"],
                value: data.indexOf(item)))
            .toList(),
      ],
    );
  }
}
