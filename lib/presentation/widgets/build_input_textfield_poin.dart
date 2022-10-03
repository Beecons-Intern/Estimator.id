import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

class BuildInputFieldPoin extends StatelessWidget {
  const BuildInputFieldPoin({
    Key? key,
    required this.title,
    this.isAddress = false,
  }) : super(key: key);

  final String title;
  final bool isAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: text3(neutral500, bold),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            maxLines: isAddress == true ? 3 : 1,
            cursorColor: primary,
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.fromLTRB(16, 20, 20, 0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primary, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: neutral200),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
}
