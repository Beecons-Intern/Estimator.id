import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import 'build_item_option.dart';

class BuildGroupOption extends StatefulWidget {
  const BuildGroupOption(
      {Key? key,
      required this.size,
      required this.options,
      required this.isActive})
      : super(key: key);

  final Size size;
  final List options;
  final int isActive;

  @override
  State<BuildGroupOption> createState() => _BuildGroupOptionState();
}

class _BuildGroupOptionState extends State<BuildGroupOption> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...widget.options
            .map((item) => Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: widget.isActive == widget.options.indexOf(item)
                              ? primary
                              : null,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: primary, width: 2)),
                      child: Center(
                        child: Text(
                          item,
                          style: text3(
                              widget.isActive == widget.options.indexOf(item)
                                  ? neutral100
                                  : neutral500,
                              semibold),
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
      ],
    )
        /* SizedBox(
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
                        child: Center(
                          child: Text(
                            item,
                            style: text3(
                                isActive == widget.options.indexOf(item)
                                    ? neutral100
                                    : neutral500,
                                semibold),
                          ),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ],
      ),
    ) */
        ;
  }
}
