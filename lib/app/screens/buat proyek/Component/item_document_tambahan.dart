import 'package:flutter/material.dart';

class ItemDokumenTambahan extends StatelessWidget {
  final String icon;
  final String title;
  final double value;
  final String persen;

  const ItemDokumenTambahan({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
    required this.persen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Row(
        children: [
          Image.asset(icon),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      persen,
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                LinearProgressIndicator(
                  value: value,
                  backgroundColor: Colors.grey,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
