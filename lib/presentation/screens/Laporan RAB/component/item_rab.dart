import 'package:flutter/material.dart';

class ItemRab extends StatefulWidget {
  const ItemRab({Key? key, required this.size, this.isSelected = false})
      : super(key: key);

  final Size size;
  final bool isSelected;

  @override
  State<ItemRab> createState() => _ItemRabState();
}

class _ItemRabState extends State<ItemRab> {
  int? anggaran;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: ((context, index) => Container(
            margin: EdgeInsets.symmetric(horizontal: widget.size.width * 0.05),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Pekerjaan Persiapan",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(35, 15, 23, 1),
                      ),
                    ),
                    if (widget.isSelected == true) ...[
                      GestureDetector(
                        onTap: () {
                          if (anggaran == null) {
                            setState(() {
                              anggaran = index;
                            });
                          } else if (anggaran != null && anggaran == index) {
                            setState(() {
                              anggaran = null;
                            });
                          }
                        },
                        child: Icon(
                          anggaran != null && anggaran == index
                              ? Icons.swipe_up
                              : Icons.swipe_down,
                          color: anggaran != null && anggaran == index
                              ? Colors.red
                              : Colors.lightGreen,
                        ),
                      )
                    ]
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Harga",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(93, 201, 65, 1),
                      ),
                    ),
                    SizedBox(width: widget.size.width * 0.08),
                    const Text(
                      "Rp. 1.900.000",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(93, 201, 65, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "%",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(218, 146, 16, 1),
                      ),
                    ),
                    SizedBox(width: widget.size.width * 0.15),
                    const Text(
                      "100.000 %",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(218, 146, 16, 1),
                      ),
                    ),
                  ],
                ),
                const Divider(thickness: 3),
                if (anggaran != null && anggaran == index) ...[
                  // CardEstimasiAnggaran(size: size)
                ]
              ],
            ),
          )),
    );
  }
}
