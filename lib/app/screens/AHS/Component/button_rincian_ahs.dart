import 'package:flutter/material.dart';

class ButtonRincianAHS extends StatelessWidget {
  const ButtonRincianAHS({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Container(
            width: size.width * 0.25,
            decoration: BoxDecoration(
              color: Color(0xFF089E14),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20), right: Radius.zero),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 11,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "PERBARUI",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            width: size.width * 0.25,
            decoration: BoxDecoration(
              color: Color(0xFFECD42B),
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20), left: Radius.zero),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.cancel,
                    color: Colors.white,
                    size: 11,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "BATAL",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
