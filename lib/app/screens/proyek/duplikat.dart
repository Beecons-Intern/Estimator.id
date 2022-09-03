import 'package:estimator_id/app/screens/proyek/menu_proyek.dart';
import 'package:estimator_id/app/screens/proyek/view_proyek.dart';
import 'package:flutter/material.dart';

class Duplikat extends StatelessWidget {
  const Duplikat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          GestureDetector(
            onTap: (() => Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewProyek(),
                  ),
                )),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.close,
                    size: 10,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Duplikat Proyek",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Silahkan tentukan rincian profil proyek \n baru anda!",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 19),
          Row(
            children: const [
              Text(
                "Nama Proyek",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 4),
              Text(
                "(Wajib Disi)",
                style: TextStyle(
                    fontSize: 6,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )
            ],
          ),
          SizedBox(height: 4),
          Container(
            width: 241,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreen),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "masukan nama proyek",
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: const [
              Text(
                "Pemilik Proyek",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 4),
              Text(
                "(Wajib Disi)",
                style: TextStyle(
                    fontSize: 6,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )
            ],
          ),
          SizedBox(height: 4),
          Container(
            width: 241,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreen),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "ketik nama pemilik proyek",
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 18),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.lightGreen,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.content_copy,
                  size: 10,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  "Duplikat Proyek",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
