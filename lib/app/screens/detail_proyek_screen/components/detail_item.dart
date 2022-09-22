import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          content: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Detail",
                style: text2(
                    neutral500, semibold),
              ),
              const Divider(
                thickness: 2,
              ),
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  Text(
                    "Nama",
                    style: text3(neutral500,
                        regular),
                  ),
                  Expanded(
                    child: Text(
                      "Pengukuran dan pemasangan Bouwplank",
                      style: text3(
                          neutral500,
                          medium),
                      textAlign:
                          TextAlign.end,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  Text(
                    "Volume",
                    style: text3(neutral500,
                        regular),
                  ),
                  Expanded(
                    child: Text(
                      "121.00",
                      style: text3(
                          neutral500,
                          medium),
                      textAlign:
                          TextAlign.end,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  Text(
                    "Satuan",
                    style: text3(neutral500,
                        regular),
                  ),
                  Expanded(
                    child: Text(
                      "m1",
                      style: text3(
                          neutral500,
                          medium),
                      textAlign:
                          TextAlign.end,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  Text(
                    "Harga Satuan",
                    style: text3(neutral500,
                        regular),
                  ),
                  Expanded(
                    child: Text(
                      "Rp 124.983,57",
                      style: text3(
                          neutral500,
                          medium),
                      textAlign:
                          TextAlign.end,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  Text(
                    "Harga",
                    style: text3(neutral500,
                        regular),
                  ),
                  Expanded(
                    child: Text(
                      "Rp 15.123.012,14",
                      style: text3(
                          neutral500,
                          medium),
                      textAlign:
                          TextAlign.end,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  Text(
                    "%",
                    style: text3(neutral500,
                        regular),
                  ),
                  Expanded(
                    child: Text(
                      "100.00 %",
                      style: text3(
                          neutral500,
                          medium),
                      textAlign:
                          TextAlign.end,
                    ),
                  )
                ],
              ),
            ],
          ),
        );
  }
}