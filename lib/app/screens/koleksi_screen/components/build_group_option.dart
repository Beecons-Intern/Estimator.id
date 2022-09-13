import 'package:flutter/material.dart';

import 'build_item_option.dart';

class BuildGroupOption extends StatelessWidget {
  const BuildGroupOption({Key? key, required this.size, required this.options})
      : super(key: key);

  final Size size;
  final List options;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          ...options
              .map((item) => Padding(
                    padding: EdgeInsets.only(
                        left:
                            options.indexOf(item) == 0 ? size.width * 0.05 : 0),
                    child: BuildItemOption(text: item),
                  ))
              .toList(),
        ],
      ),
    );
  }
}