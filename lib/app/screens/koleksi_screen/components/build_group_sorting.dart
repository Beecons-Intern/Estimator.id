import 'package:flutter/material.dart';

import 'build_item_sorting.dart';

class BuildGroupSorting extends StatelessWidget {
  const BuildGroupSorting(
      {Key? key, required this.size, required this.sortings})
      : super(key: key);

  final Size size;
  final List sortings;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          ...sortings
              .map((item) => Padding(
                    padding: EdgeInsets.only(
                        left: sortings.indexOf(item) == 0
                            ? size.width * 0.05
                            : 0),
                    child: BuildItemSorting(text: item),
                  ))
              .toList(),
        ],
      ),
    );
  }
}