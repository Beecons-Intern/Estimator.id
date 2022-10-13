import 'package:estimator_id/data/model/template_harga_satuan_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../utilities/utilities.dart';

class DetailItem extends StatelessWidget {
  const DetailItem(
      {Key? key, required this.templateHargaSatuan, required this.isTemplate})
      : super(key: key);
  final TemplateHargaSatuanModel templateHargaSatuan;
  final bool isTemplate;

  @override
  Widget build(BuildContext context) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: 2,
    );
    return AlertDialog(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Detail",
            style: text2(neutral500, semibold),
          ),
          const Divider(
            thickness: 2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nama",
                style: text3(neutral500, regular),
              ),
              Expanded(
                child: Text(
                  templateHargaSatuan.namaPekerjaan,
                  style: text3(neutral500, medium),
                  textAlign: TextAlign.end,
                ),
              )
            ],
          ),
          if (isTemplate != true) ...[
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Volume",
                  style: text3(neutral500, regular),
                ),
                Expanded(
                  child: Text(
                    "121.00",
                    style: text3(neutral500, medium),
                    textAlign: TextAlign.end,
                  ),
                )
              ],
            ),
          ],
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Satuan",
                style: text3(neutral500, regular),
              ),
              Expanded(
                child: Text(
                  templateHargaSatuan.satuan,
                  style: text3(neutral500, medium),
                  textAlign: TextAlign.end,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Harga Satuan",
                style: text3(neutral500, regular),
              ),
              Expanded(
                child: Text(
                  currencyFormatter.format(templateHargaSatuan.totalHarga),
                  style: text3(neutral500, medium),
                  textAlign: TextAlign.end,
                ),
              )
            ],
          ),
          if (isTemplate != true) ...[
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Harga",
                  style: text3(neutral500, regular),
                ),
                Expanded(
                  child: Text(
                    "Rp 15.123.012,14",
                    style: text3(neutral500, medium),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "%",
                  style: text3(neutral500, regular),
                ),
                Expanded(
                  child: Text(
                    "100.00 %",
                    style: text3(neutral500, medium),
                    textAlign: TextAlign.end,
                  ),
                )
              ],
            ),
          ],
        ],
      ),
    );
  }
}
