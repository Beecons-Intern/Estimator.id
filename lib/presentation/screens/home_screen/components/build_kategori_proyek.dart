import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../utilities/utilities.dart';

class BuildKategoriProyek extends StatelessWidget {
  const BuildKategoriProyek(
      {Key? key,
      required this.text,
      required this.total,
      this.initialIndex = 1,
      required this.size})
      : super(key: key);

  final String text;
  final String total;
  final int initialIndex;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: 10,
          bottom: 5,
          top: 5,
          left: initialIndex == 0 ? size.width * 0.05 : 0),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: accentYellow200,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 2,
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 1)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFF7EC984),
            child: SvgPicture.asset("assets/icon/kategori_proyek.svg"),
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
    );
  }
}