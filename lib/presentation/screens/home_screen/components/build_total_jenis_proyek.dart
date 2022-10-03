import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../utilities/utilities.dart';

class BuildTotalJenisProyek extends StatelessWidget {
  const BuildTotalJenisProyek(
      {Key? key, required this.text, required this.total})
      : super(key: key);

  final String text;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: accentGreen200,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        // border: Border.all(color: neutral200)
        // boxShadow: [
        //   BoxShadow(
        //       spreadRadius: 1,
        //       blurRadius: 1,
        //       color: Colors.black.withOpacity(0.1),
        //       offset: const Offset(0, 1)),
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: neutral100,
            child: SvgPicture.asset("assets/icon/icon_proyek.svg"),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: text4(neutral500, bold),
              ),
              Text(
                total,
                style: text4(neutral500, regular),
              )
            ],
          )
        ],
      ),
    ));
  }
}
