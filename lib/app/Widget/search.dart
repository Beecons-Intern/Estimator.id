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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(8, 158, 20, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          focusNode: FocusNode(skipTraversal: true),
          decoration: const InputDecoration(
            hintText: 'Masukan Kata Kunci',
            suffixIcon: Icon(Icons.search),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
