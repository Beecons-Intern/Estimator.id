import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';
import 'button_card.dart';

class BuildCard extends StatelessWidget {
  const BuildCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.colorTop,
      required this.colorBottom,
      required this.text,
      required this.backgroundColor,
      required this.onTap})
      : super(key: key);

  final String title;
  final String subtitle;
  final Color colorTop;
  final Color colorBottom;
  final String text;
  final Color backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [colorTop, colorBottom]),
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 10,
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 1)),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Text(
            title,
            style: text1(neutral500, medium),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: text3(neutral500, regular),
          ),
          const SizedBox(
            height: 5,
          ),
          ButtonCard(
            onTap: onTap,
            text: text,
            backgroundColor: backgroundColor,
          )
        ],
      ),
    );
  }
}
