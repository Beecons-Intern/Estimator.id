import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class BuildInputPoin extends StatelessWidget {
  const BuildInputPoin(
      {Key? key, required this.size, required this.onFieldSubmitted})
      : super(key: key);

  final Size size;
  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nomor Token",
              style: text3(neutral500, bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.75,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onFieldSubmitted: onFieldSubmitted,
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
                ),
                const Icon(
                  Icons.info_rounded,
                  color: neutral200,
                  size: 32,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
