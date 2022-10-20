import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../data/model/harga_satuan_model.dart';
import '../../../../utilities/utilities.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({Key? key, required this.hargaSatuan}) : super(key: key);
  final HargaSatuanModel hargaSatuan;

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
                  hargaSatuan.namaPekerjaan,
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
                  hargaSatuan.satuan,
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
                      .format(double.parse(hargaSatuan.totalHarga)),
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
                "Harga",
                style: text3(neutral500, regular),
              ),
              Expanded(
                child: Text(
                  currencyFormatter
                      .format(double.parse(hargaSatuan.totalHarga)),
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
                  "0.00 %",
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
