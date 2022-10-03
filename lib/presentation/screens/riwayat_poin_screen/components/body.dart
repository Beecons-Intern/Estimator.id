import 'package:flutter/material.dart';
import '../../../route/route_name.dart';
import '../../../../utilities/utilities.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
                color: accentBrown400,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Poin",
                  style: text2(neutral500, bold),
                ),
                Text(
                  "1040",
                  style: heading2(neutral500, bold),
                ),
                Text(
                  "Lakukanlah transaksi di estimator.id untuk mendapatkan poin yang dapat ditukarkan dengan berbagai keuntungan",
                  style: text4(neutral500, regular),
                ),
                const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.poin);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    width: size.width,
                    decoration:
                        BoxDecoration(color: neutral100.withOpacity(0.2)),
                    child: Text(
                      "Tukar Poin",
                      style: text2(neutral100, bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Riwayat Poin",
            style: text2(neutral500, bold),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: accentGreen200,
                      child: Icon(
                        Icons.upload_file,
                        color: neutral500,
                      ),
                    ),
                    title: Text(
                      "Ekspor laporan proyek",
                      style: text3(neutral500, regular),
                    ),
                    subtitle: Text(
                      "24 Juni 2022",
                      style: text4(neutral500, light),
                    ),
                    trailing: Text(
                      "+ 54",
                      style: text2(primary, semibold),
                    ),
                  ),
              separatorBuilder: (context, index) => const Divider(
                    color: neutral200,
                  ),
              itemCount: 5)
        ],
      ),
    );
  }
}
