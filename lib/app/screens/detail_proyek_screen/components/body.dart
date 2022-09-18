import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
import '../../../utilities/text_styles.dart';
import '../../proyek/duplikat.dart';
import 'item_anggaran_belanja.dart';
import 'item_profil_project.dart';
import 'popup_bagikan.dart';
import 'total_anggaran_belanja.dart';

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
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Profil Proyek",
                style: text2(neutral500, bold),
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: (() => menuProyek(context)),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Nama Proyek",
            edit: "Rumah Gaya Eropa",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Lokasi Proyek",
            edit: "Sleman D.I Yogyakarta",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Pemilik Proyek",
            edit: "Joko Santoso",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Tahun",
            edit: "2022",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Jasa Kontraktor",
            edit: "10.00 %",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Pajak",
            edit: "11.00 %",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Dokumen Proyek",
            edit: "eropan style.xlxs",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemProfilProyek(
            nama: "Keterangan",
            edit: "Rumahku Surgaku fix no debat",
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rancangan Anggaran Belanja",
                style: text2(neutral500, bold),
              ),
              /* IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: (() => menuProyek(context)),
                ) */
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const ItemAnggaranBelanja(
            namaAnggaran: "Pekerjaan Persiapan",
            harga: "Rp. 115.303.500,00",
            persen: "11.5%",
          ),
          const SizedBox(
            height: 10,
          ),
          const ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan Struktural",
              harga: "Rp. 303.950.000,00",
              persen: "30.3%"),
          const SizedBox(
            height: 10,
          ),
          const ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan Arsitektural",
              harga: "Rp. 253.700.750,00",
              persen: "25,3%"),
          const SizedBox(
            height: 10,
          ),
          const ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan MEP",
              harga: "Rp. 203.253.000,00",
              persen: "20.3%"),
          const SizedBox(
            height: 30,
          ),
          const TotalAnggaranBelanja(
            totalName: "Jumlah Harga",
            harga: "Rp. 876.107.550,00",
          ),
          const SizedBox(
            height: 10,
          ),
          const TotalAnggaranBelanja(
              totalName: "PPN 11%", harga: "Rp.96.371.830,50"),
          const SizedBox(
            height: 10,
          ),
          const TotalAnggaranBelanja(
              totalName: "Total Harga", harga: "972.379.380,50"),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Future<dynamic> menuProyek(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext contex) => AlertDialog(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.edit_note,
                  size: 24,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit",
                  style: text4(neutral500, medium),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.delete,
                  size: 24,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Hapus",
                  style: text4(neutral500, medium),
                )
              ],
            ),
            GestureDetector(
              onTap: (() => showDialog(
                    context: context,
                    builder: (BuildContext context) => const Duplikat(),
                  )),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.content_copy,
                    size: 24,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Duplikat",
                    style: text4(neutral500, medium),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (() => showDialog(
                    context: context,
                    builder: (BuildContext context) => PopupBagikan(),
                  )),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.share,
                    size: 24,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Bagikan",
                    style: text4(neutral500, medium),
                  )
                ],
              ),
            ),
          ],
        ),
        alignment: Alignment.bottomCenter,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      ),
    );
  }
}
