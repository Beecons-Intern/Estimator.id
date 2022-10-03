import 'package:flutter/material.dart';
import '../../../../utilities/utilities.dart';

class ItemBahan extends StatelessWidget {
  const ItemBahan({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: primary100, borderRadius: BorderRadius.circular(10)),
      width: size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: const Text(
                  "Pembuatan Gudang semen dan  peralatan [Pekerjaan Persiapan] ",
                  style: TextStyle(
                    fontSize: 12,
                    color: neutral500,
                  ),
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.delete,
                    size: 20,
                  ),
                  Icon(
                    Icons.edit_note,
                    size: 20,
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, right: size.width * 0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Jumlah",
                      style: TextStyle(
                        fontSize: 12,
                        color: neutral500,
                      ),
                    ),
                    Text(
                      "1",
                      style: TextStyle(
                        fontSize: 12,
                        color: accentYellow500,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "PxLxTx",
                      style: TextStyle(
                        fontSize: 12,
                        color: neutral500,
                      ),
                    ),
                    Text(
                      "6x4x2 m3",
                      style: TextStyle(
                        fontSize: 12,
                        color: accentYellow500,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Luas",
                      style: TextStyle(
                        fontSize: 12,
                        color: neutral500,
                      ),
                    ),
                    Text(
                      "45 m2",
                      style: TextStyle(
                        fontSize: 12,
                        color: accentYellow500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, right: size.width * 0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Volume",
                      style: TextStyle(
                        fontSize: 12,
                        color: neutral500,
                      ),
                    ),
                    Text(
                      "0.00 m3",
                      style: TextStyle(
                        fontSize: 12,
                        color: accentYellow500,
                      ),
                    )
                  ],
                ),
                SizedBox(width: size.width * 0.16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Jumlah Volume",
                      style: TextStyle(
                        fontSize: 12,
                        color: neutral500,
                      ),
                    ),
                    Text(
                      "0.00 m3",
                      style: TextStyle(
                        fontSize: 12,
                        color: accentYellow500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
