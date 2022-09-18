import 'package:estimator_id/app/screens/proyek/component/tim_proyek.dart';
import 'package:estimator_id/app/screens/proyek/view_proyek.dart';
import 'package:flutter/material.dart';

class PopupBagikan extends StatelessWidget {
  const PopupBagikan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                "Nama Tim Proyek",
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
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "ketik nama tim proyek",
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 6),
          Row(
            children: const [
              Text(
                "Posisi",
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
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "tambahkan posisi anda",
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
          Container(
            width: 125,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(color: Colors.green),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  Icon(
                    Icons.person_add,
                    size: 13,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Tambahkan Tim Proyek",
                    style: TextStyle(fontSize: 8),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          TimProyek(),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              width: 90,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(
                      Icons.share,
                      size: 18,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Bagikan",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
