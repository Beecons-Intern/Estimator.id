import 'dart:ui';

import 'package:estimator_id/app/utilities/colors.dart';
import 'package:flutter/material.dart';

import '../../../Widget/search.dart';

class AlertAmbilVolume extends StatefulWidget {
  const AlertAmbilVolume({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<AlertAmbilVolume> createState() => _AlertAmbilVolumeState();
}

class _AlertAmbilVolumeState extends State<AlertAmbilVolume> {
  @override
  Widget build(BuildContext context) {
    int? hide;
    return AlertDialog(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.cancel,
                color: accentYellow400,
              ),
            ),
          ),
          const Center(
            child: Text(
              "Pilih Volume Pekerjaan",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w400),
            ),
          ),
          Searching(size: widget.size),
          SizedBox(
            width: widget.size.width,
            height: widget.size.height * 0.4,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => ExpansionTile(
                title: const Text("Pekerjaan Persiapan"),
                children: [
                  Container(
                    color: primary200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          color: primary500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: widget.size.width * 0.5,
                                child: const Text(
                                  "Pengukuran dan Pemasangan Bouwplank",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),

                              ///button pilih
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: primary800,
                                    borderRadius: BorderRadius.circular(7)),
                                child: const Text(
                                  "Pilih",
                                  style: TextStyle(
                                      fontSize: 12, color: neutral100),
                                ),
                              )
                            ],
                          ),
                        ),

                        /// container harga dan volume
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: primary800)),
                                child: const Text(
                                  "30 m3",
                                  style: TextStyle(
                                      fontSize: 12, color: neutral500),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: primary800)),
                                  child: const Text(
                                    "Rp. 1999.000/m3",
                                    style: TextStyle(
                                        fontSize: 12, color: neutral500),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        ///total harga
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 2),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: primary800)),
                          child: const Text(
                            "Rp. 5.970.000",
                            style: TextStyle(
                              fontSize: 12,
                              color: neutral500,
                            ),
                          ),
                        ),

                        const SizedBox(height: 10)
                      ],
                    ),
                  ),

                  ///beton balok
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Beton balok bordes 20/40",
                              style: TextStyle(fontSize: 12),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: primary800,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                                "Pilih",
                                style:
                                    TextStyle(fontSize: 12, color: neutral100),
                              ),
                            )
                          ],
                        ),

                        /// volume, harga, harga satuan
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Volume",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "45",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: accentBrown400,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Harga Satuan",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    "Rp. 3.999.000",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: accentBrown400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Satuan",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "m3",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: accentBrown400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        /// % harga
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "%",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "45",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: accentBrown400,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: widget.size.width * 0.185),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Harga",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Rp. 3.999.000",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: accentBrown400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
