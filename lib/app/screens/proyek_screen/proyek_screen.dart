import 'package:flutter/material.dart';

import '../../utilities/colors.dart';
import '../../utilities/text_styles.dart';
import 'components/body.dart';

class ProyekScreen extends StatelessWidget {
  const ProyekScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primary,
        title: Text(
          "Proyek",
          style: text1(neutral100, bold),
        ),
        centerTitle: false,
        actions: [
          Container(
            margin: EdgeInsets.only(right: size.width * 0.05),
            child: const Icon(
              Icons.filter_alt,
              color: neutral100,
            ),
          ),
        ],
        /* toolbarHeight: 80,
        title: Stack(
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.filter_alt,
                color: primary,
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Koleksi",
                    style: text1(neutral500, bold),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      alignment: AlignmentDirectional.center,
                      iconEnabledColor: primary,
                      isDense: true,
                      style: text3(neutral500, medium),
                      value: selected,
                      items: items
                          .map((item) => DropdownMenuItem(
                              onTap: () {
                                controller.animateToPage(items.indexOf(item),
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeInOutSine);
                              },
                              value: item,
                              child: Text(
                                item,
                                style: text3(neutral500, regular),
                              )))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          if (value is String) {
                            selected = value;
                          }
                        });
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ), */
      ),
      body: const Body(),
    );
  }
}
