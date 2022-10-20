import 'package:estimator_id/data/model/template_harga_satuan_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../utilities/utilities.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({Key? key, required this.templateHargaSatuan})
      : super(key: key);
  final TemplateHargaSatuanModel templateHargaSatuan;

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
                  currencyFormatter
                      .format(double.parse(templateHargaSatuan.totalHarga)),
                  style: text3(neutral500, medium),
                  textAlign: TextAlign.end,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
