import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';

class ContentEmptyLaporan extends StatelessWidget {
  const ContentEmptyLaporan({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Searching(size: size),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Row(
            children: [
              Button(
                size: size,
                icon: Icons.refresh,
                title: "Reload",
              ),
              const SizedBox(width: 10),
              Button(
                size: size,
                icon: Icons.upload,
                title: "Ekspor Data",
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/Images/not-found 3.png"),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Tidak ada hasil Ditemukan",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(151, 151, 151, 1)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
