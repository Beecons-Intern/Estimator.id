import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import 'build_item_option.dart';

class BuildGroupOption extends StatefulWidget {
  const BuildGroupOption({Key? key, required this.size, required this.options})
      : super(key: key);

  final Size size;
  final List options;

  @override
  State<BuildGroupOption> createState() => _BuildGroupOptionState();
}

class _BuildGroupOptionState extends State<BuildGroupOption> {
  int isActive = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          ...widget.options
              .map((item) => Padding(
                    padding: EdgeInsets.only(
                        left: widget.options.indexOf(item) == 0
                            ? widget.size.width * 0.05
                            : 0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isActive = widget.options.indexOf(item);
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: isActive == widget.options.indexOf(item)
                                ? primary
                                : null,
                            borderRadius: BorderRadius.circular(10),
                            border: isActive == widget.options.indexOf(item)
                                ? null
                                : Border.all(color: primary, width: 2)),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: accentBrown500,
                              child: Text(
                                "2",
                                style: text4(neutral100, medium),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              item,
                              style: text3(
                                  isActive == widget.options.indexOf(item)
                                      ? neutral100
                                      : neutral500,
                                  semibold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
