import 'package:flutter/material.dart';

class Searching extends StatelessWidget {
  const Searching({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.02),
      child: Container(
        width: size.width * 0.9,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(8, 158, 20, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Masukan kata kunci",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.search,
              color: Color.fromRGBO(150, 150, 150, 1),
            )
          ],
        ),
      ),
    );
  }
}
