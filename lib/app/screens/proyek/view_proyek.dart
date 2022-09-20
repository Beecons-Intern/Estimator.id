import 'package:flutter/material.dart';
import 'menu_proyek.dart';
import 'component/item_anggaran_belanja.dart';
import 'component/item_profil_project.dart';
import 'component/total_anggaran_belanja.dart';

class ViewProyek extends StatelessWidget {
  const ViewProyek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(244, 255, 255, 255),
        title: Center(
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Profil Proyek',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ItemProfilProyek(
            nama: "Nama Proyek",
            edit: "Rumah Gaya Eropa",
          ),
          ItemProfilProyek(
            nama: "Lokasi Proyek",
            edit: "Sleman D.I Yogyakarta",
          ),
          ItemProfilProyek(
            nama: "Pemilik Proyek",
            edit: "Joko Santoso",
          ),
          ItemProfilProyek(
            nama: "Tahun",
            edit: "2022",
          ),
          ItemProfilProyek(
            nama: "Jasa Kontraktor",
            edit: "10.00 %",
          ),
          ItemProfilProyek(
            nama: "Pajak",
            edit: "11.00 %",
          ),
          ItemProfilProyek(
            nama: "Dokumen Proyek",
            edit: "eropan style.xlxs",
          ),
          ItemProfilProyek(
            nama: "Keterangan",
            edit: "Rumahku Surgaku fix no debat",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
          ItemAnggaranBelanja(
            namaAnggaran: "Pekerjaan PErsiapan",
            harga: "Rp. 115.303.500,00",
            persen: "11.5%",
          ),
          ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan Struktural",
              harga: "Rp. 303.950.000,00",
              persen: "30.3%"),
          ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan Arsitektural",
              harga: "Rp. 253.700.750,00",
              persen: "25,3%"),
          ItemAnggaranBelanja(
              namaAnggaran: "Pekerjaan MEP",
              harga: "Rp. 203.253.000,00",
              persen: "20.3%"),
          TotalAnggaranBelanja(
            totalName: "Jumlah Harga",
            harga: "Rp. 876.107.550,00",
          ),
          TotalAnggaranBelanja(totalName: "PPN 11%", harga: "Rp.96.371.830,50"),
          TotalAnggaranBelanja(
              totalName: "Total Harga", harga: "972.379.380,50")
        ],
      ),
    );
  }
}
