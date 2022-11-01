import 'package:flutter/material.dart';
import 'component/item_anggaran_belanja.dart';
import 'component/item_profil_project.dart';
import 'component/total_anggaran_belanja.dart';

class ViewProyek extends StatelessWidget {
  const ViewProyek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(244, 255, 255, 255),
        title: const Center(
          child: Text(
            "Rumah Gaya Eropa",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Profil Proyek',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ItemProfilProyek(
            nama: "Nama Proyek",
            edit: "Rumah Gaya Eropa",
          ),
          const ItemProfilProyek(
            nama: "Lokasi Proyek",
            edit: "Sleman D.I Yogyakarta",
          ),
          const ItemProfilProyek(
            nama: "Pemilik Proyek",
            edit: "Joko Santoso",
          ),
          const ItemProfilProyek(
            nama: "Tahun",
            edit: "2022",
          ),
          const ItemProfilProyek(
            nama: "Jasa Kontraktor",
            edit: "10.00 %",
          ),
          const ItemProfilProyek(
            nama: "Pajak",
            edit: "11.00 %",
          ),
          const ItemProfilProyek(
            nama: "Dokumen Proyek",
            edit: "eropan style.xlxs",
          ),
          const ItemProfilProyek(
            nama: "Keterangan",
            edit: "Rumahku Surgaku fix no debat",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Rancangan Anggaran Belanja",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                /* IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: (() => MenuProyek(context)),
                ) */
                // PopupMenuButton(
                //   itemBuilder: (context) => [
                //     PopupMenuItem(
                //       child: Row(
                //         children: [
                //           Icon(
                //             Icons.edit,
                //             size: 15,
                //           ),
                //           SizedBox(
                //             width: 10,
                //           ),
                //           Text(
                //             "Edit",
                //             style: TextStyle(color: Colors.black, fontSize: 10),
                //           ),
                //         ],
                //       ),
                //     )
                //   ],
                //   child: Icon(Icons.more_vert),
                // ),
              ],
            ),
          ),
          const ItemAnggaranBelanja(
            namaAnggaran: "Pekerjaan PErsiapan",
            harga: "Rp. 115.303.500,00",
            persen: "11.5%",
          ),
          const ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan Struktural",
              harga: "Rp. 303.950.000,00",
              persen: "30.3%"),
          const ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan Arsitektural",
              harga: "Rp. 253.700.750,00",
              persen: "25,3%"),
          const ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan MEP",
              harga: "Rp. 203.253.000,00",
              persen: "20.3%"),
          const TotalAnggaranBelanja(
            totalName: "Jumlah Harga",
            harga: "Rp. 876.107.550,00",
          ),
          const TotalAnggaranBelanja(totalName: "PPN 11%", harga: "Rp.96.371.830,50"),
          const TotalAnggaranBelanja(
              totalName: "Total Harga", harga: "972.379.380,50")
        ],
      ),
    );
  }
}
