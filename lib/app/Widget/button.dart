import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final String title;

  const Button({
    Key? key,
    required this.size,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.height * 0.004),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(8, 158, 20, 1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ],
      ),
    );
  }
}
